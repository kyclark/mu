{

    package Pair;

    # Do not edit this file - Perl 5 generated by HASH(0x231c300)
    # AUTHORS, COPYRIGHT: Please look at the source file.
    use v5;
    use strict;
    no strict "vars";
    use constant KP6_DISABLE_INSECURE_CODE => 0;
    use KindaPerl6::Runtime::Perl5::Runtime;
    my $_MODIFIED;
    INIT { $_MODIFIED = {} }
    INIT { $_ = ::DISPATCH( $::Scalar, "new", { modified => $_MODIFIED, name => "$_" } ); }
    do {
        do {
            if ( ::DISPATCH( ::DISPATCH( ::DISPATCH( ( $GLOBAL::Code_VAR_defined = $GLOBAL::Code_VAR_defined || ::DISPATCH( $::Routine, "new", ) ), 'APPLY', $::Pair ), "true" ), "p5landish" ) ) {
                do { }
            }
            else {
                do {
                    do {
                        ::MODIFIED($::Pair);
                        $::Pair = ::DISPATCH( ::DISPATCH( $::Class, 'new', ::DISPATCH( $::Str, 'new', 'Pair' ) ), 'PROTOTYPE', );
                        }
                    }
            }
        };
        ::DISPATCH( ::DISPATCH( $::Pair, 'HOW', ), 'add_parent',    ::DISPATCH( $::Value, 'HOW', ) );
        ::DISPATCH( ::DISPATCH( $::Pair, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str,   'new', 'key' ) );
        ::DISPATCH( ::DISPATCH( $::Pair, 'HOW', ), 'add_attribute', ::DISPATCH( $::Str,   'new', 'value' ) );
        ::DISPATCH(
            ::DISPATCH( $::Pair, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'perl' ),
            ::DISPATCH(
                $::Code, 'new',
                {   code => sub {

                        # emit_declarations
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        my $self;
                        $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) unless defined $self;
                        INIT { $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) }

                        # get $self
                        $self = shift;

                        # emit_arguments
                        my $CAPTURE;
                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) unless defined $CAPTURE;
                        INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                        ::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array', ) );
                        do {
                            ::MODIFIED($Hash__);
                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                        };
                        { my $_param_index = 0; }

                        # emit_body
                        ::DISPATCH(
                            ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", ) ),
                            'APPLY',
                            ::DISPATCH( $::Str, 'new', '( ' ),
                            ::DISPATCH(
                                ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", ) ),
                                'APPLY',
                                ::DISPATCH( ::DISPATCH( $self, "key" ), 'perl', ),
                                ::DISPATCH(
                                    ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", ) ),
                                    'APPLY',
                                    ::DISPATCH( $::Str, 'new', ' => ' ),
                                    ::DISPATCH(
                                        ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", ) ),
                                        'APPLY',
                                        ::DISPATCH( ::DISPATCH( $self, "value" ), 'perl', ),
                                        ::DISPATCH( $::Str, 'new', ' )' )
                                    )
                                )
                            )
                        );
                    },
                    signature => ::DISPATCH(
                        $::Signature,
                        "new",
                        {   invocant => bless(
                                {   'namespace' => [],
                                    'name'      => 'self',
                                    'twigil'    => '',
                                    'sigil'     => '$'
                                },
                                'Var'
                            ),
                            array  => ::DISPATCH( $::List, "new", { _array => [] } ),
                            return => $::Undef,
                        }
                    ),
                }
            )
        );
        ::DISPATCH(
            ::DISPATCH( $::Pair, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'Str' ),
            ::DISPATCH(
                $::Code, 'new',
                {   code => sub {

                        # emit_declarations
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        my $self;
                        $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) unless defined $self;
                        INIT { $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) }

                        # get $self
                        $self = shift;

                        # emit_arguments
                        my $CAPTURE;
                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) unless defined $CAPTURE;
                        INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                        ::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array', ) );
                        do {
                            ::MODIFIED($Hash__);
                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                        };
                        { my $_param_index = 0; }

                        # emit_body
                        ::DISPATCH(
                            ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", ) ),
                            'APPLY',
                            ::DISPATCH( $self, "key" ),
                            ::DISPATCH( ( $GLOBAL::Code_infix_58__60__126__62_ = $GLOBAL::Code_infix_58__60__126__62_ || ::DISPATCH( $::Routine, "new", ) ), 'APPLY', ::DISPATCH( $::Str, 'new', chr(9) ), ::DISPATCH( $self, "value" ) )
                        );
                    },
                    signature => ::DISPATCH(
                        $::Signature,
                        "new",
                        {   invocant => bless(
                                {   'namespace' => [],
                                    'name'      => 'self',
                                    'twigil'    => '',
                                    'sigil'     => '$'
                                },
                                'Var'
                            ),
                            array  => ::DISPATCH( $::List, "new", { _array => [] } ),
                            return => $::Undef,
                        }
                    ),
                }
            )
        );
        ::DISPATCH(
            ::DISPATCH( $::Pair, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'true' ),
            ::DISPATCH(
                $::Code, 'new',
                {   code => sub {

                        # emit_declarations
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        my $self;
                        $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) unless defined $self;
                        INIT { $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) }

                        # get $self
                        $self = shift;

                        # emit_arguments
                        my $CAPTURE;
                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) unless defined $CAPTURE;
                        INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                        ::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array', ) );
                        do {
                            ::MODIFIED($Hash__);
                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                        };
                        { my $_param_index = 0; }

                        # emit_body
                        ::DISPATCH( ( $GLOBAL::Code_true = $GLOBAL::Code_true || ::DISPATCH( $::Routine, "new", ) ), 'APPLY', );
                    },
                    signature => ::DISPATCH(
                        $::Signature,
                        "new",
                        {   invocant => bless(
                                {   'namespace' => [],
                                    'name'      => 'self',
                                    'twigil'    => '',
                                    'sigil'     => '$'
                                },
                                'Var'
                            ),
                            array  => ::DISPATCH( $::List, "new", { _array => [] } ),
                            return => $::Undef,
                        }
                    ),
                }
            )
        );
        ::DISPATCH(
            ::DISPATCH( $::Pair, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'Int' ),
            ::DISPATCH(
                $::Code, 'new',
                {   code => sub {

                        # emit_declarations
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        my $self;
                        $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) unless defined $self;
                        INIT { $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) }

                        # get $self
                        $self = shift;

                        # emit_arguments
                        my $CAPTURE;
                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) unless defined $CAPTURE;
                        INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                        ::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array', ) );
                        do {
                            ::MODIFIED($Hash__);
                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                        };
                        { my $_param_index = 0; }

                        # emit_body
                        ::DISPATCH( ::DISPATCH( $self, "value" ), 'Int', );
                    },
                    signature => ::DISPATCH(
                        $::Signature,
                        "new",
                        {   invocant => bless(
                                {   'namespace' => [],
                                    'name'      => 'self',
                                    'twigil'    => '',
                                    'sigil'     => '$'
                                },
                                'Var'
                            ),
                            array  => ::DISPATCH( $::List, "new", { _array => [] } ),
                            return => $::Undef,
                        }
                    ),
                }
            )
        );
        ::DISPATCH(
            ::DISPATCH( $::Pair, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'array' ),
            ::DISPATCH(
                $::Code, 'new',
                {   code => sub {

                        # emit_declarations
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        my $self;
                        $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) unless defined $self;
                        INIT { $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) }

                        # get $self
                        $self = shift;

                        # emit_arguments
                        my $CAPTURE;
                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) unless defined $CAPTURE;
                        INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                        ::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array', ) );
                        do {
                            ::MODIFIED($Hash__);
                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                        };
                        { my $_param_index = 0; }

                        # emit_body
                        ::DISPATCH( $::Array, 'new', { _array => [ ::DISPATCH( $self, "key" ), ::DISPATCH( $self, "value" ) ] } );
                    },
                    signature => ::DISPATCH(
                        $::Signature,
                        "new",
                        {   invocant => bless(
                                {   'namespace' => [],
                                    'name'      => 'self',
                                    'twigil'    => '',
                                    'sigil'     => '$'
                                },
                                'Var'
                            ),
                            array  => ::DISPATCH( $::List, "new", { _array => [] } ),
                            return => $::Undef,
                        }
                    ),
                }
            )
        );
        ::DISPATCH(
            ::DISPATCH( $::Pair, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'keys' ),
            ::DISPATCH(
                $::Code, 'new',
                {   code => sub {

                        # emit_declarations
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        my $self;
                        $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) unless defined $self;
                        INIT { $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) }

                        # get $self
                        $self = shift;

                        # emit_arguments
                        my $CAPTURE;
                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) unless defined $CAPTURE;
                        INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                        ::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array', ) );
                        do {
                            ::MODIFIED($Hash__);
                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                        };
                        { my $_param_index = 0; }

                        # emit_body
                        ::DISPATCH( $::Array, 'new', { _array => [ ::DISPATCH( $self, "key" ) ] } );
                    },
                    signature => ::DISPATCH(
                        $::Signature,
                        "new",
                        {   invocant => bless(
                                {   'namespace' => [],
                                    'name'      => 'self',
                                    'twigil'    => '',
                                    'sigil'     => '$'
                                },
                                'Var'
                            ),
                            array  => ::DISPATCH( $::List, "new", { _array => [] } ),
                            return => $::Undef,
                        }
                    ),
                }
            )
        );
        ::DISPATCH(
            ::DISPATCH( $::Pair, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'values' ),
            ::DISPATCH(
                $::Code, 'new',
                {   code => sub {

                        # emit_declarations
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        my $self;
                        $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) unless defined $self;
                        INIT { $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) }

                        # get $self
                        $self = shift;

                        # emit_arguments
                        my $CAPTURE;
                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) unless defined $CAPTURE;
                        INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                        ::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array', ) );
                        do {
                            ::MODIFIED($Hash__);
                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                        };
                        { my $_param_index = 0; }

                        # emit_body
                        ::DISPATCH( $::Array, 'new', { _array => [ ::DISPATCH( $self, "value" ) ] } );
                    },
                    signature => ::DISPATCH(
                        $::Signature,
                        "new",
                        {   invocant => bless(
                                {   'namespace' => [],
                                    'name'      => 'self',
                                    'twigil'    => '',
                                    'sigil'     => '$'
                                },
                                'Var'
                            ),
                            array  => ::DISPATCH( $::List, "new", { _array => [] } ),
                            return => $::Undef,
                        }
                    ),
                }
            )
        );
        ::DISPATCH(
            ::DISPATCH( $::Pair, 'HOW', ),
            'add_method',
            ::DISPATCH( $::Str, 'new', 'LOOKUP' ),
            ::DISPATCH(
                $::Code, 'new',
                {   code => sub {

                        # emit_declarations
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        my $self;
                        $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) unless defined $self;
                        INIT { $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) }

                        # get $self
                        $self = shift;

                        # emit_arguments
                        my $CAPTURE;
                        $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) unless defined $CAPTURE;
                        INIT { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
                        my $List__ = ::DISPATCH( $::ArrayContainer, 'new', { modified => $_MODIFIED, name => '$List__' } );
                        ::DISPATCH_VAR( $CAPTURE, "STORE", ::CAPTURIZE( \@_ ) );
                        ::DISPATCH_VAR( $List__, 'STORE', ::DISPATCH( $CAPTURE, 'array', ) );
                        do {
                            ::MODIFIED($Hash__);
                            $Hash__ = ::DISPATCH( $CAPTURE, 'hash', );
                        };
                        { my $_param_index = 0; }

                        # emit_body
                        ::DISPATCH(
                            ( $GLOBAL::Code_ternary_58__60__63__63__32__33__33__62_ = $GLOBAL::Code_ternary_58__60__63__63__32__33__33__62_ || ::DISPATCH( $::Routine, "new", ) ),
                            'APPLY',
                            ::DISPATCH(
                                ( $GLOBAL::Code_infix_58__60_eq_62_ = $GLOBAL::Code_infix_58__60_eq_62_ || ::DISPATCH( $::Routine, "new", ) ),
                                'APPLY',
                                ::DISPATCH( $List__, 'INDEX', ::DISPATCH( $::Int, 'new', 0 ) ),
                                ::DISPATCH( $self,   "key" )
                            ),
                            ::DISPATCH( $self, "value" ),
                            $::Undef
                        );
                    },
                    signature => ::DISPATCH(
                        $::Signature,
                        "new",
                        {   invocant => bless(
                                {   'namespace' => [],
                                    'name'      => 'self',
                                    'twigil'    => '',
                                    'sigil'     => '$'
                                },
                                'Var'
                            ),
                            array  => ::DISPATCH( $::List, "new", { _array => [] } ),
                            return => $::Undef,
                        }
                    ),
                }
            )
        );
    };
    1
}
