use inc::Module::Install;
name 'Attribute-TieClasses';
all_from 'lib/Attribute/TieClasses.pm';

build_requires 'Test::More';

use_test_base;
auto_include;
WriteAll;
