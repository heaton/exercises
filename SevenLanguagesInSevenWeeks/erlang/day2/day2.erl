% Excercises in day 2
-module(day2).
-export[(map/2), (sum/1)].

% map(List, Key) returns the value in List whose key equals to the given Key.
% Example:  map([{1,one},{2,two},{3,three}], 3) = three
% See map_test.erl for more exmples.
map(List, Key) -> [WantedValue || {WantedKey, WantedValue} <- List, WantedKey == Key].

% sum(List) returns a list of pairs of Item,Price based on the input List.
% Example:  [{guice,26},{apple,10},{rice,36}] = day2:sum([{guice,2,13},{apple,5,2},{rice,3,12}])
% See shopping_list_summary_test.erl for more exmples.
sum(List) -> [{Item, Quantity * Price} || {Item, Quantity, Price} <- List].