% problem2

% each row has exactly one queen
{queen(R, 1..n)}=1 :- R=1..n.

% two queens are not in the same row
:- queen(X,Y1), queen(X,Y2), Y1 != Y2.

% two queens are not in the same column
:- queen(X1, Y), queen(X2, Y), X1 != X2.

% two queens are not in the same diagonal
:- queen(X1, Y1), queen(X2, Y2), X1 != X2, |X1-X2| = |Y1-Y2|.

#show queen/2.
