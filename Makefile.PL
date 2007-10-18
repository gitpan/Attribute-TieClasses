use inc::Module::Install;
name 'Attribute-TieClasses';
all_from 'lib/Attribute/TieClasses.pm';
perl_version '5.006';

build_requires 'Test::More' => '0.70';

use_standard_tests(without => 'pod_coverage');
auto_include;
WriteAll;
