#!/usr/bin/pugs

use v6;
use Test;

=pod

This file was derived from the perl5 CPAN module Perl6::Rules,
version 0.3 (12 Apr 2004), file t/litvar.t.

It has (hopefully) been, and should continue to be, updated to
be valid perl6.

=cut

plan 29;

my $var = "a*b";
my @var = qw(a b c);
my %var = (a=>1, b=>2, c=>3);
my $aref = \@var;
my $href = \%var;


# SCALARS

ok($var ~~ m/$var/, 'Simple scalar interpolation');
ok("zzzzzz${var}zzzzzz" ~~ m/$var/, 'Nested scalar interpolation');
ok(not "aaaaab" ~~ m/$var/, 'Rulish scalar interpolation');

ok('a' ~~ m/$aref[0]/, 'Array ref 0');
ok('a' ~~ m/$aref.[0]/, 'Array ref dot 0');
ok('a' ~~ m/@var[0]/, 'Array 0');

ok('1' ~~ m/$href.{a}/, 'Hash ref dot A');
ok('1' ~~ m/$href{a}/, 'Hash ref A');
ok('1' ~~ m/%var{a}/, 'Hash A');

ok(not 'a' ~~ m/$aref[1]/, 'Array ref 1');
ok(not 'a' ~~ m/$aref.[1]/, 'Array ref dot 1');
ok(not 'a' ~~ m/@var[1]/, 'Array 1');
ok(not '1' ~~ m/$href.{b}/, 'Hash ref dot B');
ok(not '1' ~~ m/$href{b}/, 'Hash ref B');
ok(not '1' ~~ m/%var{b}/, 'Hash B');


# ArrayS

ok("a" ~~ m/@var/, 'Simple array interpolation (a)');
ok("b" ~~ m/@var/, 'Simple array interpolation (b)');
ok("c" ~~ m/@var/, 'Simple array interpolation (c)');
ok(not "d" ~~ m/@var/, 'Simple array interpolation (d)');
ok("ddddaddddd" ~~ m/@var/, 'Nested array interpolation (a)');

ok("abca" ~~ m/^@var+$/, 'Multiple array matching');
ok(not "abcad" ~~ m/^@var+$/, 'Multiple array non-matching');


# HASHES

ok("a" ~~ m/%var/, 'Simple hash interpolation (a)');
ok("b" ~~ m/%var/, 'Simple hash interpolation (b)');
ok("c" ~~ m/%var/, 'Simple hash interpolation (c)');
ok(not "d" ~~ m/%var/, 'Simple hash interpolation (d)');
ok("====a=====" ~~ m/%var/, 'Nested hash interpolation (a)');
ok(not "abca" ~~ m/^%var$/, 'Simple hash non-matching');

ok("a b c a" ~~ m:w/^[ %var]+$/, 'Simple hash repeated matching');
