
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'yet another forking process controller',
  'AUTHOR' => 'Alex White <VVu@geekfarm.org>',
  'BUILD_REQUIRES' => {
    'English' => '0',
    'File::Temp' => '0',
    'IO::File' => '0',
    'Test::More' => '0.88'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Proc-Launcher',
  'EXE_FILES' => [],
  'LICENSE' => 'bsd',
  'NAME' => 'Proc::Launcher',
  'PREREQ_PM' => {
    'Carp' => '0',
    'File::Path' => '0',
    'File::Tail' => '0',
    'Mouse' => '0',
    'Mouse::Role' => '0',
    'POSIX' => '0'
  },
  'VERSION' => '0.0.33',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



