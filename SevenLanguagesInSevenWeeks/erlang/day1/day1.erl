% Excercises in day 1
-module(day1).
-export[(wordCount/1), (countUpToTen/1), (printResult/1)].

% A function that counts how many words are there in the given statement.
% Examples:
%   wordCount("two words") = 2.
%     This is significant.
%   wordCount("") = 1.
%     Hey! Empty string is considered to be one word.
%   wordCount("three  word") = 3.
%     Hey! There is an empty string in the middle of two spaces.
wordCount([]) -> 1;
wordCount([32 | Rest]) -> wordCount(Rest) + 1;
wordCount([Head | Rest]) -> wordCount(Rest).

% A function that counts from the input up to 10.
% Examples:
%   countUpToTen(1) = [1,2,3,4,5,6,7,8,9,10].
countUpToTen(10) -> [10];
countUpToTen(N) -> [N | countUpToTen(N+1)].

% A function that returns "success" when input is success, "error: message" when input is {error, Message}
printResult(success) -> "success";
printResult({error, Message}) -> "error: message".
