% Unit test suites for excercises in day 2
-module(map_test).
-import(day2, [map/2]).
-include_lib("eunit/include/eunit.hrl").

positive_test() -> [two] = day2:map([{1,one},{2,two},{3,three}],2).
not_found_test() -> [] = day2:map([{1,one},{2,two},{3,three}],0).
found_multiple_test() -> [one,"one"] = day2:map([{1,one},{2,two},{1,"one"},{2,"two"} ],1).