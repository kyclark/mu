use v5.10;
use lib '../../src/perl6';
use MooseX::Declare;
class Mildew::Parser::STD::Cached {
    use CHI;
    use Digest::MD4 qw(md4);

    has cache => (is=>'ro',default=> sub {CHI->new( driver => 'File', root_dir => 'parser_cache',serializer=>'YAML')});
    has parser => (is=>'ro',default=> sub {require STD;require Mildew::Parser::STD;Mildew::Parser::STD->new()},lazy=>1);

    method parse($source) {
        my $checksum = md4($source);
        if (my $parse = $self->cache->get($checksum)) {
            use Data::Dumper::Concise;
            {
                local $INC{"STD.pm"} = "do-not-load";
                do 'viv';
            }
            warn "using cached ast";

            # generating the missing VAST classes
            for (@{$parse->{gen_class}}) {
                Actions::gen_class(@{$_})
            } 

            # the $::ORIG var contains the orginal string
            $::ORIG = $parse->{ORIG};

            return $parse->{VAST};
        }

        # we need to duplicate the calls to gen_class before we can use the AST
        require Actions;
        my $gen_class = \&Actions::gen_class;
        my @gen_class;
        {
        no warnings 'redefine';
        *Actions::gen_class = sub {
            say "generating class $_[0]";
            push(@gen_class,[@_]);
            $gen_class->(@_);
        };
        }

        my $vast = $self->parser->parse($source);
        $self->cache->set($checksum,{ORIG=>$::ORIG,VAST=>$vast,gen_class=>\@gen_class});
        $vast;
    }
}
