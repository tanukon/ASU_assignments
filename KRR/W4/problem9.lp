%Partition all the n numbers into k sets
{schur(N,1..k)}=1 :- N=1..n.

%Make the subsets as sum-free
:- schur(N,S), schur(M,S), schur(M+N,S).
