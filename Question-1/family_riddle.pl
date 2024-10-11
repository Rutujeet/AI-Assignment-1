% Facts
father(grandfather, father).
father(father, speaker).
father(father, man).

% Rules
son(X, Y) :- father(Y, X).
grandson(X, Y) :- father(Y, Z), father(Z, X).

% Query to solve the riddle
solve_riddle(X) :-
    father(F, speaker),
    son(X, F),
    X \= speaker.

% Test query
:- solve_riddle(Who), write('The man is the speaker\'s '), write(Who), nl.