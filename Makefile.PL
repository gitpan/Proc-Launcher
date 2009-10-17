
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Proc-Launcher',
  NAME      => 'Proc::Launcher',
  AUTHOR    => 'Alex\ White\ \<VVu\@geekfarm\.org\>',
  ABSTRACT  => 'yet\ another\ forking\ process\ controller',
  VERSION   => '0.0.2',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'bsd') : ()),
  PREREQ_PM    => {
    "Scalar::Util" => '0',
    "Getopt::Long" => '0',
    "Term::ANSIColor" => '0',
    "YAML" => '0',
    "FindBin" => '0',
    "Pod::Usage" => '0',
    "Carp" => '0',
    "Test::More" => '0',
    "POSIX" => '0',
    "Mouse" => '0',
    "File::Temp" => '0',
    "File::Path" => '0',
    "POE" => '0',
  },
  test => {TESTS => 't/*.t'}
);

