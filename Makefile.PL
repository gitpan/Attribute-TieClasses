use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Attribute::TieClasses',
    'VERSION_FROM'	=> 'TieClasses.pm', # finds $VERSION
    'PREREQ_PM'		=> {
    	Attribute::Handlers => 0.61,
    },
    dist                => {
        # don't ask about existing .tar.gz files
        COMPRESS => 'gzip --force --best'
    },
);
