
use strict;
use warnings;

 BEGIN { require 5.008; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Attribute::TieClasses',
                       'DISTNAME' => 'Attribute-TieClasses',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Marcel Gruenauer <marcel@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Attribute wrappers for CPAN Tie classes',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100710',
                       'PREREQ_PM' => {
                                        'Test::More' => '0',
                                        'Scalar::Util' => '0',
                                        'Attribute::Handlers' => '0',
                                        'English' => '0',
                                        'File::Find' => '0',
                                        'File::Temp' => '0',
                                        'Carp' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



