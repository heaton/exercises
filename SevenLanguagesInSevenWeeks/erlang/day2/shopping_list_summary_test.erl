% Unit test suites for excercises in day 2
-module(shopping_list_summary_test).
-import(day2, [sum/2]).
-include_lib("eunit/include/eunit.hrl").

positive_test() -> [{guice,26},{apple,10},{rice,36}] = day2:sum([{guice,2,13},{apple,5,2},{rice,3,12}]).
empty_test() -> [] = day2:sum([]).
duplicate_items_test() -> [{guice,26},{guice,10},{guice,36}] = day2:sum([{guice,2,13},{guice,5,2},{guice,3,12}]).