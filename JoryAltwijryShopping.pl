% Lab Activity - Shopping Program

start :-
    menu([coffee, milk, chocolate, apple, juice]).

% Show the menu, read the choice, then act on it
menu(Basket) :-
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    read(Choice),
    choice(Choice, Basket).

% d - display, then show the menu again
choice(d, Basket) :-
    display_items(Basket),
    menu(Basket).

% a - add an item at the end, then show the menu again with the new basket
choice(a, Basket) :-
    write('enter the item you want to add it'), nl,
    read(Item),
    add_item(Item, Basket, NewBasket),
    write('The item has been added'), nl,
    menu(NewBasket).

% e - exit
choice(e, _) :-
    write('Goodbye'), nl.

% anything else - show the menu again
choice(C, Basket) :-
    C \= d, C \= a, C \= e,
    write('Invalid choice, try again.'), nl,
    menu(Basket).

% Display the items using recursion, stopping at the empty list
display_items([]).
display_items([H|T]) :-
    write(H), nl,
    display_items(T).

% Put the new item at the end of the list
add_item(X, [], [X]).
add_item(X, [H|T], [H|R]) :-
    add_item(X, T, R).
