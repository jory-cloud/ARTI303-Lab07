% Task 1 - Delete Every Occurrence
% deleteElement(X, List, Result): Result is List with every X removed.

deleteElement(_, [], []).                 % base case: empty list
deleteElement(X, [X|T], R) :-             % head is X -> skip it
    deleteElement(X, T, R).
deleteElement(X, [H|T], [H|R]) :-         % head is not X -> keep it
    H \= X,
    deleteElement(X, T, R).

% Task 2 - Add at the End
% add_at_the_end(X, List, Result): Result is List with X added at the end.

add_at_the_end(X, [], [X]).               % base case: empty list -> [X]
add_at_the_end(X, [H|T], [H|R]) :-        % keep the head, go down the tail
    add_at_the_end(X, T, R).
