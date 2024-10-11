#!/usr/bin/swipl -f -q

/* List utility functions - BEGIN */
writenlist([]) :- nl.
writenlist([H|T]) :-
    write(H),
    write(' '),
    writenlist(T).

reverse_writenlist([]).
reverse_writenlist([H|T]) :-
    reverse_writenlist(T),
    write(H),
    nl.

member(X, [X|_]).
member(X, [_|T]) :- member(X, T).
/* List utility functions - END */

/* Change bank from east (e) to west (w) and vice versa */
opposite(e, w).
opposite(w, e).

/* Check if the weight on the boat is valid (<=100 kg) */
valid_weight(man, 80).
valid_weight(woman, 80).
valid_weight(child, 30).

total_weight([], 0).
total_weight([H|T], Weight) :-
    valid_weight(H, W),
    total_weight(T, RestWeight),
    Weight is W + RestWeight.

valid_boat(Passengers) :-
    total_weight(Passengers, Weight),
    Weight =< 100.

/* Move function */
move(state(X, People_X, People_Y), state(Y, New_People_X, New_People_Y), Passengers) :-
    opposite(X, Y),
    subtract(People_X, Passengers, Remaining_X),
    append(People_Y, Passengers, New_People_Y),
    append(Remaining_X, [boat], New_People_X),
    valid_boat(Passengers),
    writenlist(['Move:', Passengers, 'from', X, 'to', Y]).

/* Path finding */
path(Goal, Goal, Path) :-
    write('Solution found:'), nl,
    reverse_writenlist(Path).

path(State, Goal, Path) :-
    move(State, NextState, _),
    \+ member(NextState, Path),
    path(NextState, Goal, [NextState|Path]).

/* Main predicate to solve the problem */
solve_river_crossing :-
    Initial = state(e, [man, woman, child, child, boat], []),
    Goal = state(w, [], [man, woman, child, child, boat]),
    path(Initial, Goal, [Initial]).

/* Run the program */
:- solve_river_crossing, halt(0).