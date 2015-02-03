% recursion
% ---

father(zeb, john_boy_snr).
father(john_boy_snr, john_boy_jnr).

ancestor(X, Y) :-
	father(X, Y).
ancestor(X, Y) :-
	father(X, Z), ancestor(Z, Y).

%				  recursion is last of subgoals, so will be optimised

% think of . between rules as logical OR, and a , between a rule's goals as a logical AND

% ancestor(Who, john_boy_jnr).
% ancestor(zeb, Who).

% be careful of recursive subgoals as it can lead to stack overflow
% position recursive subgoal at the end of a rule, and prolog will use 'tail recursion optimisation' to clean up stack

% lists and tuples
% ---

% (1,2,3) = (1,2,3). -- true; tuples on each side are unified (same each side) on size and each element
% (1,2,3) = (A,B,C). -- true; A is set as 1, B is set as 2, C is set as 3
% (1,1,3) = (X,X,Z). -- true; X set as 1 works for both cases

% same with lists, but with square brackets:
% [1,2,3] = [1,2,3]. -- true, lists on each side 

% [a,b,c] = [Head|Tail]. -- Head = a, Tail = [b,c]
% [a,b,c] = [a|Tail]. -- Tail = [b,c]
% [a,b,c] = [a|[Head|Tail]]. -- Head = b, Tail = [c]
% [a,b,c] = [_,[Head,_]. -- _ is wildcard that unifies with anything, thus: Head = b
