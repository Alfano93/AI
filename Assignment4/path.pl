/* facts */
arc(m,p,8).
arc(q,p,2).
arc(q,m,5).
arc(k,q,3).

/*Rules */

%What does it mean to be connected?
connected(X,Y,L):-
    arc(X,Y,L). %connected arcs are those that share a node, since it is a directed grapth, 
                %You cannot move backwards

%what is a path?
path(A,B,Path,Length):-
    setof([P,L],route(A,B,P,L),Set), %from all of the possible routes, make a set with the route and its length
    Set = [_|_], %a path must be a non-empty route, if it is, fail. '_' is a don't care value
    shortest(Set,[Path|Length]). %a path is the Set of shortest length

%what does it mean to move?
move(A,B,P,[B|P],L) :- %From node a to b, what are all the possible unique moves that can be made?
    connected(A,B,L). %You can only move to nodes that are connected

move(A,B,Explored,Path,L):-
    connected(A,C,D), % are the nodes connected?
    C \== B, %is it the goal? \== means they can't be equal
    \+member(C,Explored), % is C already part of explored? \+ is the negate 
    move(C,B,[C|Explored],Path,L1), %move to the next node
    L is D+L1. %keep track of your length

%what does it mean to be a route?
route(A,B,Path,Length):-
    move(A,B,[A],Q,Length), %starting from A, get to B
    reverse(Q,Path). % the resulting path must be reversed

%What does it mean to be the shortest path?
shortest([F|R],L) :- 
    min(R,F,L). %the shortest Path will have the minimal Length

%What does it mean to be minimal?
min([],M,M). %this stores the current min path, starts with an empty list. 
min([[P,L]|R],[_,M],Min):-
    L<M,!,min(R,[P|L],Min). % if the new path is shorter than the old path, replace the old with the new, ! is cut operator. If the path is greater than M, it is not backtracked. 
min([_|R],M,Min) :-
    min(R,M,Min). %store the new minimum path 
