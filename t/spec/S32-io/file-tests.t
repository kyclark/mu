use v6;
use Test;

# Maybe someone can put in a better smartlink? --lue
# L<S32::IO/"A file test, where X is one of the letters listed below.">

plan 26;

my $existing-file = "tempfile-file-tests";
my $non-existent-file = "non-existent-file-tests";
my $zero-length-file = "tempfile-zero-length-file-tests";

{ # write the file first
    my $fh = open($existing-file, :w);
    $fh.print: "0123456789A";
    $fh.close();
}

{ # write the file first
    my $fh = open($zero-length-file, :w);
    $fh.close();
}

#Str methods
##existence
ok $existing-file.e, 'It exists';
isa_ok $existing-file.e, Bool, '.e returns Bool';
ok $existing-file ~~ :e, 'It exists';
isa_ok $existing-file ~~ :e, Bool, '~~ :e returns Bool';
nok $non-existent-file.e, "It doesn't";
isa_ok $non-existent-file.e, Bool, '.e returns Bool';
nok $non-existent-file ~~ :e, "It doesn't";
isa_ok $non-existent-file ~~ :e, Bool, '~~ :e returns Bool';

##is empty
ok $zero-length-file.z, 'Is empty';
isa_ok $zero-length-file.z, Bool, '.z returns Bool';
ok $zero-length-file ~~ :z, 'Is empty';
isa_ok $zero-length-file ~~ :z, Bool, '~~ :z returns Bool';
nok $existing-file.z, 'Is not';
isa_ok $existing-file.z, Bool, '.z returns Bool';
nok $existing-file ~~ :z, 'Is not';
isa_ok $existing-file ~~ :z, Bool, '~~ :z returns Bool';

##file size
is $zero-length-file.s, 0, 'No size';
isa_ok $zero-length-file.s, Int, '.s returns Int';
is $zero-length-file ~~ :s, 0, 'No size';
#?rakudo todo 'Rakudo gets the type and size wrong with the ~~ :s form'
isa_ok $zero-length-file ~~ :s, Int, '~~ :s returns Int';
is $existing-file.s, 11, 'size of file';
isa_ok $existing-file.s, Int, '.s returns Int';
#?rakudo 2 todo 'Rakudo gets the type and size wrong with the ~~ :s form'
is $existing-file ~~ :s, 11, 'size of file';
isa_ok $existing-file ~~ :s, Int, '~~ :s returns Int';

# clean up
is unlink($existing-file), 1, 'file has been removed';
is unlink($zero-length-file), 1, 'file has been removed';

# vim: ft=perl6