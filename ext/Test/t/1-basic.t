#!/usr/bin/pugs

use v6;
require Test;

plan 21;

ok(2 + 2 == 4, '2 and 2 make 4');
is(2 + 2, 4, '2 and 2 make 4');
isa_ok([1, 2, 3], 'List');

todo_ok(2 + 2 == 5, '2 and 2 make 5');
todo_is(2 + 2, 5, '2 and 2 make 5');
todo_isa_ok({'one' => 1}, 'Hash');

like("Hello World", rx:perl5{\s}, '... testing like()');
todo_like("HelloWorld", rx:perl5{\s}, '... testing like()');

pass('This test passed');
#fail('This test failed');

skip('skip this test for now');

todo_fail('this fails, but might work soon');

diag('some misc comments and documentation');

cmp_ok('test', sub ($a, $b) { ?($a gt $b) }, 'me', '... testing gt on two strings');
todo_cmp_ok('test', sub ($a, $b) { ?($a lt $b) }, 'me', '... testing lt on two strings');

eval 'die'; # try to ruin $!

eval_ok('my $a = 1; $a', "eval_ok");

todo_eval_ok('die', "todo_eval_ok");

eval_is('my $a = 1; $a', 1, "eval_is");
#eval_is('die', 1, "eval_is");

todo_eval_is('my $b = 1; $b', 2, "todo_eval_is");
todo_eval_is('die', 3, "die in todo_eval_is");

use_ok('t::use_ok_test');
eval_ok('it_worked()', '... use_ok worked and the export was successful');

# Need to do a test loading a package that is not there,
# and see that the load fails. Gracefully. :)
# fail_ok( use_ok('Non::Existent::Package') )

todo_use_ok('t::no_module_here');

1;

