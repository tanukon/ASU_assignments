% problem8

% the number of bishop
{bishop(1..n, 1..n)} k.

% two bishop are not in the same diagonal
:- bishop(X1, Y1), bishop(X2, Y2), X1 != X2, |X1-X2| = |Y1-Y2|.

#maximize{1,X,Y : bishop(X,Y)}.

f(N) :- N=#count{X,Y: bishop(X,Y)}.

#show f/1.
