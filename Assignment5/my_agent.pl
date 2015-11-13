%my_agent.pl

%   this procedure requires the external definition of two procedures:
%
%     init_agent: called after new world is initialized.  should perform
%                 any needed agent initialization.
%
%     run_agent(percept,action): given the current percept, this procedure
%                 should return an appropriate action, which is then
%                 executed.
%
% This is what should be fleshed out

% need a set of explored spaces

init_agent:-
  format('\n=====================================================\n'),
  format('This is init_agent:\n\tIt gets called once, use it for your initialization\n\n'),
  format('=====================================================\n\n'),
  assert(curX(1)),
  assert(curY(1)),
  assert(angle(0)),
  assert(arrow(1)),
  assert(listen_hit(0)),
  assert(gold(0)),
  assert(go_home(0)),
  assert(wumpus_found(0)),
  assert(safe(1,1)),
  assert(explored([])),
  assert(stenches([])),
  assert(stench(_,_)),
  assert(breeze(_,_)),
  assert(safe(X,Y):- (not_pit(X,Y),not_wumpus(X,Y))),
  assert(possible_pit(X,Y):- \+not_pit(X,Y)),
  assert(possible_wumpus(X,Y):- \+not_wumpus(X,Y)),
  %assert(possible_wumpus(X,Y):- \+possible_pit(X,Y)),
  %assert(possible_pit(X,Y):- \+possible_wumpus(X,Y)),
  assert(pit(X,Y) :- \+not_pit(X,Y)),
  assert(wumpus(X,Y) :- \+not_wumpus(X,Y)),
  %assert(not_wumpus(_,_)),
  %assert(not_pit(_,_)),
  assert(minX(0)),
  assert(minY(0)),
  assert(maxX(5)),
  assert(maxY(5)),
  assert(possible_pit(_,_)),  
  assert(pit(_,_)),
  assert(possible_wumpus(_,_)),
  assert(wumpus(_,_)),
  assert(trick(0)).

/*
run_agent(_, goforward ):-
  format('\n=====================================================\n'),
  format('This is run_agent(.,.):\n\t It gets called each time step.\n\tThis default one simply moves forward\n'),
  format('You might find "display_world" useful, for your debugging.\n'),
  display_world,   
  format('=====================================================\n\n'),
*/

run_agent(Percept,Action):-
  format('\n=====================================================\n'),
  display_world,
  format('\n=====================================================\n'),
  look_at_world(Percept),
  action(Action),
  new_location(Action).  

add_to_explored(H):-
  explored(T),
  (member(H,T)) -> (!);(retract(explored(T)),assert(explored([H|T]))).

add_to_stenches(H):-
  stenches(T),
  (member(H,T)) -> (!);(retract(stenches(T)),assert(stenches([H|T]))).

look_at_world(Percept):-
  [Stench,Breeze,Glitter,Bump,Scream] = Percept,
  %stenches(W),
  (
    format("Percept: ["),
    print(Stench),format(","),
    print(Breeze),format(","),
    print(Glitter),format(","),
    print(Bump),format(","),
    print(Scream),
    format("]\n"),
    format("Explored: "),explored(Exp),print(Exp),format("\n")
  ), 
  (
    (((Breeze == no),(Stench == no)) -> (safe_square(Breeze,Stench));!),
    ((Breeze == yes) -> (check_pit(Breeze));(not_breeze(Breeze))),
    ((Stench == yes)  -> (check_wumpus(Stench));(not_stench(Stench))),
    ((Glitter == yes) -> (check_gold(Glitter));!),
    ((Bump == yes) -> (check_bump(Bump));!),
    ((Scream == yes) -> (retract(wumpus_found(0)),retract(trick(1)),assert(trick(0)),assert(wumpus_found(1)));!)
  ),
  (
    confirm_pit(X,Y),
    confirm_wumpus(X,Y)
    %deduce_wumpus(W)
  ).
  
safe_square(Breeze,Stench):-
  \+ Breeze == yes,
  \+ Stench == yes,
  curX(X),
  curY(Y),
  (
    X1 is X + 1,
    X2 is X - 1,
    Y1 is Y + 1,
    Y2 is Y - 1
  ),
 (
    (((assert(safe(X1,Y)),assert(not_pit(X1,Y)),assert(not_wumpus(X1,Y)),format("safe("),print(X1),format(","),print(Y),format(") \n"));!)),
    (((assert(safe(X,Y1)),assert(not_pit(X,Y1)),assert(not_wumpus(X,Y1)),format("safe("),print(X),format(","),print(Y1),format(") \n"));!))
  ),
  (
    ((X2 > 0) -> (assert(safe(X2,Y)),assert(not_pit(X2,Y)),assert(not_wumpus(X,Y2)),format("safe("),print(X2),format(","),print(Y),format(") \n")) ; ! ),
    ((Y2 > 0) -> (assert(safe(X,Y2)),assert(not_pit(X,Y2)),assert(not_wumpus(X,Y2)),format("safe("),print(X),format(","),print(Y2),format(") \n")) ; ! )
  ).

not_breeze(Breeze):-
  \+ Breeze == yes,
  curX(X),
  curY(Y),
  (
    X1 is X + 1,
    X2 is X - 1,
    Y1 is Y + 1,
    Y2 is Y - 1
  ),
  (
   (((assert(not_pit(X1,Y)),assert(no_breeze(X,Y)),format("not_pit("),print(X1),format(","),print(Y),format(") \n"));!)),
   (((assert(not_pit(X,Y1)),assert(no_breeze(X,Y)),format("not_pit("),print(X),format(","),print(Y1),format(") \n"));!))
  ),
  (
    (((X2 > 0) -> assert(not_pit(X2,Y)),assert(no_breeze(X,Y)),format("not_pit("),print(X2),format(","),print(Y),format(") \n")) ; ! ),
    (((Y2 > 0) -> assert(not_pit(X,Y2)),assert(no_breeze(X,Y)),format("not_pit("),print(X),format(","),print(Y2),format(") \n")) ; ! )
  ).
  
not_stench(Stench):-
  \+ Stench == yes,
  curX(X),
  curY(Y),
  (
    X1 is X + 1,
    X2 is X - 1,
    Y1 is Y + 1,
    Y2 is Y - 1
  ),
  (
    (((assert(not_wumpus(X1,Y)),assert(no_stench(X,Y)),format("not_wumpus("),print(X1),format(","),print(Y),format(") \n"));!)),
    (((assert(not_wumpus(X,Y1)),assert(no_stench(X,Y)),format("not_wumpus("),print(X),format(","),print(Y1),format(") \n"));!))
  ),
  (
    (((X2 > 0) -> assert(not_wumpus(X2,Y)),assert(no_stench(X,Y)),format("not_wumpus("),print(X2),format(","),print(Y),format(") \n")) ; ! ),
    (((Y2 > 0) -> assert(not_wumpus(X,Y2)),assert(no_stench(X,Y)),format("not_wumpus("),print(X),format(","),print(Y2),format(") \n")) ; ! )
  ).
  
check_gold(Glitter):-
  Glitter == yes,
  retract(gold(0)),
  assert(gold(1)).

confirm_pit(X,Y):-
  ((possible_pit(X,Y),not_pit(X,Y))->(retract(possible_pit(X,Y)));!).

confirm_wumpus(X,Y):-
  ((possible_wumpus(X,Y),not_wumpus(X,Y))->(retract(possible_wumpus(X,Y)));!).

confirm_breeze(X,Y):-
  ((breeze(X,Y),no_breeze(X,Y))->(retract(breeze(X,Y)));!).

confirm_stench(X,Y):-
  ((stench(X,Y),no_stench(X,Y))->(retract(stench(X,Y)));!).

deduce_wumpus([]):-
  !.

deduce_wumpus(W):-
  wumpus_found(Find),
  Find =:= 0,
  [H|_] = W,
  [X|L] = H,
  [Y|_] = L,
  stenches(Stenches),
  member([X,Y],Stenches),
  ((((member([X+1,Y+1],Stenches)),(\+not_wumpus(X,Y+1)))->(retract(wumpus_found(0)), assert(wumpus_found(1)),assert(wumpus(X+1,Y+1),format("Wumpus found at ("),print(X+1),format(","),print(Y+1),format(")\n")));!);
  (((member([X-1,Y-1],Stenches)),(\+not_wumpus(X+1,Y)))->(retract(wumpus_found(0)), assert(wumpus_found(1)),assert(wumpus(X-1,Y-1),format("Wumpus found at ("),print(X+1),format(","),print(Y+1),format(")\n")));!)).
  

%deduce_pit(X,Y):-
  %((((breeze(X,Y-1),breeze(X+1,Y));(breeze(X+1,Y),breeze(X,Y+1));(breeze(X,Y+1),breeze(X-1,Y))),\+not_pit(X,Y))->(assert(pit(X,Y)),format("A pit has been found at ("),print(X),format(","),print(Y),format(")\n"));!).

deduce_safe(X,Y):-
  ((not_pit(X,Y),not_wumpus(X,Y))->(assert(safe(X,Y)));!).

check_pit(Breeze):-
  \+ Breeze == no,
  curX(X),
  curY(Y),
  assert(breeze(X,Y)), 
  (
    X1 is X + 1,
    X2 is X - 1,
    Y1 is Y + 1,
    Y2 is Y - 1
  ),
  (
    (((\+safe(X1,Y)),(\+not_pit(X1,Y))) -> (assert(possible_pit(X1,Y)),format("possible_pit("),print(X1),format(","),print(Y),format(") \n")) ; !),
    (((\+safe(X,Y1)),(\+not_pit(X,Y1))) -> (assert(possible_pit(X,Y1)),format("possible_pit("),print(X),format(","),print(Y1),format(") \n")) ; !)
  ),
  (
    (((X2 > 0),((\+safe(X2,Y)),(\+not_pit(X2,Y)))) -> (assert(possible_pit(X2,Y)),format("possible_pit("),print(X2),format(","),print(Y),format(") \n")) ; ! ),
    (((Y2 > 0),((\+safe(X,Y2)),(\+not_pit(X,Y2)))) -> (assert(possible_pit(X,Y2)),format("possible_pit("),print(X),format(","),print(Y2),format(") \n")) ; ! )
  ).

check_wumpus(Stench):-
  wumpus_found(Q),
  Q =:= 0,
  \+ Stench == no,
  curX(X),
  curY(Y),
  add_to_stenches([X,Y]),
  %(((X=:=1),(Y=:=1)))->((retract(trick(0)),assert(trick(1)));!),
  (
    X1 is X + 1,
    X2 is X - 1,
    Y1 is Y + 1,
    Y2 is Y - 1
  ),
  (
    (((\+safe(X1,Y));(\+ not_wumpus(X1,Y)) ) -> (assert(possible_wumpus(X1,Y)),format("possible_wumpus("),print(X1),format(","),print(Y),format(") \n")) ; !),
    (((\+safe(X,Y1));(\+ not_wumpus(X,Y1)) ) -> (assert(possible_wumpus(X,Y1)),format("possible_wumpus("),print(X),format(","),print(Y1),format(") \n")) ; !)
  ),
  (
    (((X2 > 0),(\+safe(X2,Y);\+not_wumpus(X2,Y))) -> (assert(possible_wumpus(X2,Y)),format("possible_wumpus("),print(X2),format(","),print(Y),format(") \n")) ; ! ),
    (((Y2 > 0),(\+safe(X,Y2);\+not_wumpus(X,Y2))) -> (assert(possible_wumpus(X,Y2)),format("possible_wumpus("),print(X),format(","),print(Y2),format(") \n")) ; ! )
  ).

check_bump(Bump):-
  \+ Bump = no,
  curX(X),
  curY(Y),
  angle(Angle),
  minX(MinX),
  minY(MinY),
  (
    (((Angle =:= 0),(X=\=MinX)) -> (assert(maxX(X)));!);
    (((Angle =:= 270),(Y=\=MinY)) -> (assert(maxY(Y)));!)
  ).

new_location(Action):-
  curX(X),
  curY(Y),
  %angle(Angle),
  (
    ((Action == goforward) -> (change_XY(X,Y));!),
    ((Action == turnright) -> (change_angle(Action));!),
    ((Action == turnleft)  -> (change_angle(Action));!),
    ((Action == grab) -> (update_gold(Action));!),
    ((Action == shoot) -> (update_arrow(Action));!)
    %climb out
  ),
  H = [X,Y],
  add_to_explored(H).

update_arrow(Action):-
  Action == shoot,
  retract(arrow(1)),
  assert(arrow(0)),
  retract(listen_hit(0)),
  assert(listen_hit(1)).

update_gold(Action):-
  Action == grab,
  retract(gold(1)),
  assert(gold(0)),
  retract(go_home(0)),
  assert(go_home(1)).

change_XY(X,Y):-
  angle(Angle),
  curX(OldX),
  curY(OldY),
  (
    ((Angle =:= 0) -> ((NewX is OldX + 1),(NewY is OldY));!),
    ((Angle =:= 90) -> ((NewX is OldX),(NewY is OldY + 1));!),
    (((Angle =:= 180),((OldX - 1) > 0)) -> ((NewX is OldX - 1),(NewY is OldY));!),
    (((Angle =:= 270),((OldY - 1) > 0)) -> ((NewX is OldX),(NewY is OldY - 1));!),
    ((((OldX - 1) =< 0) , (Angle =:= 180)) -> ((NewX is OldX),(NewY is OldY));!),
    ((((OldY - 1) =< 0) , (Angle =:= 270)) -> ((NewX is OldX),(NewY is OldY));!)
  ),
  retract(curX(X)),
  retract(curY(Y)),
  assert(curX(NewX)),
  assert(curY(NewY)),
  format("New Location: ("),print(NewX),format(","),print(NewY),format(") at "),print(Angle),format(" degrees \n").

possible_XY(Xp,Yp,OldAngle):-
  curX(OldX),
  curY(OldY),
  %angle(OldAngle),
  (
    (((OldAngle =:= 0),((OldX + 1) < 5))  ->   ((Xp is OldX + 1),(Yp is OldY));!),
    (((OldAngle =:= 90),((OldY + 1) < 5)) ->   ((Xp is OldX),(Yp is OldY + 1));!),
    (((OldAngle =:= 0), ((OldX + 1) >= 5)) ->  ((Xp is OldX +1),(Yp is OldY));!),
    (((OldAngle =:= 90), ((OldY + 1) > 5)) -> ((Xp is OldX),(Yp is OldY +1));!),
    (((OldAngle =:= 180),((OldX - 1) =< 0)) -> ((Xp is OldX -1),(Yp is OldY));!),
    (((OldAngle =:= 270),((OldY - 1) =< 0)) -> ((Xp is OldX),(Yp is OldY -1));!),
    (((OldAngle =:= 180),((OldX - 1) > 0)) -> ((Xp is OldX - 1),(Yp is OldY));!),
    (((OldAngle =:= 270),((OldY - 1) > 0)) -> ((Xp is OldX),(Yp is OldY - 1));!)
  ).

change_angle(Action):-
  curX(X),
  curY(Y),
  angle(OldAngle),
  (
    ((Action == turnright) -> (NewAngle is mod((OldAngle - 90),360));!),
    ((Action == turnleft)  -> (NewAngle is mod((OldAngle + 90),360));!)
  ),
  retract(angle(OldAngle)),
  assert(angle(NewAngle)), 
  format("New Location: ("),print(X),format(","),print(Y),format(") at "),print(NewAngle),format(" degrees \n").

action(Action):-
  curX(X),
  curY(Y),
  angle(Angle),
  gold(G),
  %arrow(A),
  go_home(GH),
  %trick(T),
  Angle1 is mod(Angle-90,360),
  Angle2 is mod(Angle-180,360),
  Angle3 is mod(Angle-270,360),
  possible_XY(Xp,Yp,Angle), %if we move forward...
  possible_XY(Xp1,Yp1,Angle1), %to the right...
  possible_XY(Xp2,Yp2,Angle2), %behind us...
  possible_XY(Xp3,Yp3,Angle3), %to the left...
  explored(Exp),
  %H = [Xp,Yp],
  %angle(Angle),
  format("if we went forward: ("),print(Xp),format(","),print(Yp),format(")\n"),
  ( 
    ((G =:= 1)                                    -> (((Action = grab),format("Gold Got!\n"));!));                 %found the gold 
    %(((T =:= 1),(A=:=1))                          -> (((Action = shoot),format("A shot in the dark\n"));!));       %(1,1) has shinanigansi
    %(((T =:= 1),(A=:=0),(Angle=\=180))            -> (((Action = turnright),format("Leaving...\n"));!));
    %(((T =:= 1),(A=:=0),(Angle=:=180))            -> (((Action = climb), format("You and your shinanigans\n"));!));
    (((GH =:= 1),(X=:=1),(Y=:=1),(Angle=:=180))   -> (((Action = climb),format("Lets get out of here\n"));!));     %have the gold and need to leave
    (((\+ member([Xp,Yp],Exp)),(safe(Xp,Yp)))     -> (((Action = goforward),format("Action1\n"));!));              %in front is safe and not explored
    (((\+ member([Xp1,Yp1],Exp)),(safe(Xp1,Yp1))) -> (((Action = turnright),format("Action2\n"));!));              %right is safe and not explored
    (((\+ member([Xp2,Yp2],Exp)),(safe(Xp2,Yp2))) -> (((Action = turnleft),format("Action3\n"));!));               %behind us is safe and has not been explored
    (((\+ member([Xp3,Yp3],Exp)),(safe(Xp3,Yp3))) -> (((Action = turnleft),format("Action4\n"));!));               %if our left hasnt been explored and is safe
    (((\+ member([Xp,Yp],Exp)),(\+safe(Xp,Yp)))   -> (((Action = turnright),format("Action5\n"));!));
    (((member([Xp,Yp],Exp)),(safe(Xp,Yp)))        -> (((Action = goforward),format("Action6\n"));!));
    (((member([Xp,Yp],Exp)),(\+safe(Xp,Yp)))      -> (((Action = turnright),format("Action7\n"));!))
   %add grab
   %add shoot
   %add climb
  ),
  format("Action is "), print(Action), format("\n").

