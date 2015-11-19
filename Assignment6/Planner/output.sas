begin_version
3
end_version
begin_metric
0
end_metric
20
begin_variable
var0
-1
4
Atom at(r1, a)
Atom at(r1, b)
Atom at(r1, c)
Atom at(r1, o)
end_variable
begin_variable
var1
-1
4
Atom at(r2, a)
Atom at(r2, b)
Atom at(r2, c)
Atom at(r2, o)
end_variable
begin_variable
var2
-1
4
Atom at(r3, a)
Atom at(r3, b)
Atom at(r3, c)
Atom at(r3, o)
end_variable
begin_variable
var3
-1
4
Atom at(r4, a)
Atom at(r4, b)
Atom at(r4, c)
Atom at(r4, o)
end_variable
begin_variable
var4
-1
4
Atom at(r5, a)
Atom at(r5, b)
Atom at(r5, c)
Atom at(r5, o)
end_variable
begin_variable
var5
-1
4
Atom at(r6, a)
Atom at(r6, b)
Atom at(r6, c)
Atom at(r6, o)
end_variable
begin_variable
var6
-1
2
Atom empty(a)
NegatedAtom empty(a)
end_variable
begin_variable
var7
-1
2
Atom empty(b)
NegatedAtom empty(b)
end_variable
begin_variable
var8
-1
2
Atom empty(c)
NegatedAtom empty(c)
end_variable
begin_variable
var9
-1
2
Atom empty(o)
NegatedAtom empty(o)
end_variable
begin_variable
var10
-1
2
Atom last(r2)
NegatedAtom last(r2)
end_variable
begin_variable
var11
-1
3
Atom last(r3)
Atom on(r3, r2)
<none of those>
end_variable
begin_variable
var12
-1
4
Atom last(r4)
Atom on(r4, r2)
Atom on(r4, r3)
<none of those>
end_variable
begin_variable
var13
-1
5
Atom last(r5)
Atom on(r5, r2)
Atom on(r5, r3)
Atom on(r5, r4)
<none of those>
end_variable
begin_variable
var14
-1
6
Atom last(r6)
Atom on(r6, r2)
Atom on(r6, r3)
Atom on(r6, r4)
Atom on(r6, r5)
<none of those>
end_variable
begin_variable
var15
-1
6
Atom on(r2, r1)
Atom on(r3, r1)
Atom on(r4, r1)
Atom on(r5, r1)
Atom on(r6, r1)
Atom top(r1)
end_variable
begin_variable
var16
-1
2
Atom top(r2)
NegatedAtom top(r2)
end_variable
begin_variable
var17
-1
2
Atom top(r3)
NegatedAtom top(r3)
end_variable
begin_variable
var18
-1
2
Atom top(r4)
NegatedAtom top(r4)
end_variable
begin_variable
var19
-1
2
Atom top(r5)
NegatedAtom top(r5)
end_variable
16
begin_mutex_group
4
0 0
0 1
0 2
0 3
end_mutex_group
begin_mutex_group
4
1 0
1 1
1 2
1 3
end_mutex_group
begin_mutex_group
4
2 0
2 1
2 2
2 3
end_mutex_group
begin_mutex_group
4
3 0
3 1
3 2
3 3
end_mutex_group
begin_mutex_group
4
4 0
4 1
4 2
4 3
end_mutex_group
begin_mutex_group
4
5 0
5 1
5 2
5 3
end_mutex_group
begin_mutex_group
2
10 0
15 0
end_mutex_group
begin_mutex_group
3
11 0
11 1
15 1
end_mutex_group
begin_mutex_group
4
12 0
12 1
12 2
15 2
end_mutex_group
begin_mutex_group
5
13 0
13 1
13 2
13 3
15 3
end_mutex_group
begin_mutex_group
6
14 0
14 1
14 2
14 3
14 4
15 4
end_mutex_group
begin_mutex_group
6
15 0
15 1
15 2
15 3
15 4
15 5
end_mutex_group
begin_mutex_group
5
11 1
12 1
13 1
14 1
16 0
end_mutex_group
begin_mutex_group
4
12 2
13 2
14 2
17 0
end_mutex_group
begin_mutex_group
3
13 3
14 3
18 0
end_mutex_group
begin_mutex_group
2
14 4
19 0
end_mutex_group
begin_state
0
0
0
0
0
0
1
0
0
0
1
1
2
3
4
0
1
1
1
1
end_state
begin_goal
11
0 2
1 2
2 2
3 2
4 2
5 2
11 1
12 2
13 3
14 4
15 0
end_goal
456
begin_operator
inner_last_ring_to_outer r2 r1 o a
2
0 0
16 0
4
0 1 3 0
0 9 -1 0
0 10 0 1
0 15 5 0
1
end_operator
begin_operator
inner_last_ring_to_outer r2 r1 o b
2
0 1
16 0
4
0 1 3 1
0 9 -1 0
0 10 0 1
0 15 5 0
1
end_operator
begin_operator
inner_last_ring_to_outer r2 r1 o c
2
0 2
16 0
4
0 1 3 2
0 9 -1 0
0 10 0 1
0 15 5 0
1
end_operator
begin_operator
inner_last_ring_to_outer r3 r1 o a
2
0 0
17 0
4
0 2 3 0
0 9 -1 0
0 11 0 2
0 15 5 1
1
end_operator
begin_operator
inner_last_ring_to_outer r3 r1 o b
2
0 1
17 0
4
0 2 3 1
0 9 -1 0
0 11 0 2
0 15 5 1
1
end_operator
begin_operator
inner_last_ring_to_outer r3 r1 o c
2
0 2
17 0
4
0 2 3 2
0 9 -1 0
0 11 0 2
0 15 5 1
1
end_operator
begin_operator
inner_last_ring_to_outer r3 r2 o a
2
1 0
17 0
4
0 2 3 0
0 9 -1 0
0 11 0 1
0 16 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r3 r2 o b
2
1 1
17 0
4
0 2 3 1
0 9 -1 0
0 11 0 1
0 16 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r3 r2 o c
2
1 2
17 0
4
0 2 3 2
0 9 -1 0
0 11 0 1
0 16 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r4 r1 o a
2
0 0
18 0
4
0 3 3 0
0 9 -1 0
0 12 0 3
0 15 5 2
1
end_operator
begin_operator
inner_last_ring_to_outer r4 r1 o b
2
0 1
18 0
4
0 3 3 1
0 9 -1 0
0 12 0 3
0 15 5 2
1
end_operator
begin_operator
inner_last_ring_to_outer r4 r1 o c
2
0 2
18 0
4
0 3 3 2
0 9 -1 0
0 12 0 3
0 15 5 2
1
end_operator
begin_operator
inner_last_ring_to_outer r4 r2 o a
2
1 0
18 0
4
0 3 3 0
0 9 -1 0
0 12 0 1
0 16 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r4 r2 o b
2
1 1
18 0
4
0 3 3 1
0 9 -1 0
0 12 0 1
0 16 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r4 r2 o c
2
1 2
18 0
4
0 3 3 2
0 9 -1 0
0 12 0 1
0 16 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r4 r3 o a
2
2 0
18 0
4
0 3 3 0
0 9 -1 0
0 12 0 2
0 17 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r4 r3 o b
2
2 1
18 0
4
0 3 3 1
0 9 -1 0
0 12 0 2
0 17 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r4 r3 o c
2
2 2
18 0
4
0 3 3 2
0 9 -1 0
0 12 0 2
0 17 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r5 r1 o a
2
0 0
19 0
4
0 4 3 0
0 9 -1 0
0 13 0 4
0 15 5 3
1
end_operator
begin_operator
inner_last_ring_to_outer r5 r1 o b
2
0 1
19 0
4
0 4 3 1
0 9 -1 0
0 13 0 4
0 15 5 3
1
end_operator
begin_operator
inner_last_ring_to_outer r5 r1 o c
2
0 2
19 0
4
0 4 3 2
0 9 -1 0
0 13 0 4
0 15 5 3
1
end_operator
begin_operator
inner_last_ring_to_outer r5 r2 o a
2
1 0
19 0
4
0 4 3 0
0 9 -1 0
0 13 0 1
0 16 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r5 r2 o b
2
1 1
19 0
4
0 4 3 1
0 9 -1 0
0 13 0 1
0 16 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r5 r2 o c
2
1 2
19 0
4
0 4 3 2
0 9 -1 0
0 13 0 1
0 16 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r5 r3 o a
2
2 0
19 0
4
0 4 3 0
0 9 -1 0
0 13 0 2
0 17 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r5 r3 o b
2
2 1
19 0
4
0 4 3 1
0 9 -1 0
0 13 0 2
0 17 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r5 r3 o c
2
2 2
19 0
4
0 4 3 2
0 9 -1 0
0 13 0 2
0 17 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r5 r4 o a
2
3 0
19 0
4
0 4 3 0
0 9 -1 0
0 13 0 3
0 18 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r5 r4 o b
2
3 1
19 0
4
0 4 3 1
0 9 -1 0
0 13 0 3
0 18 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r5 r4 o c
2
3 2
19 0
4
0 4 3 2
0 9 -1 0
0 13 0 3
0 18 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r6 r1 o a
1
0 0
4
0 5 3 0
0 9 -1 0
0 14 0 5
0 15 5 4
1
end_operator
begin_operator
inner_last_ring_to_outer r6 r1 o b
1
0 1
4
0 5 3 1
0 9 -1 0
0 14 0 5
0 15 5 4
1
end_operator
begin_operator
inner_last_ring_to_outer r6 r1 o c
1
0 2
4
0 5 3 2
0 9 -1 0
0 14 0 5
0 15 5 4
1
end_operator
begin_operator
inner_last_ring_to_outer r6 r2 o a
1
1 0
4
0 5 3 0
0 9 -1 0
0 14 0 1
0 16 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r6 r2 o b
1
1 1
4
0 5 3 1
0 9 -1 0
0 14 0 1
0 16 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r6 r2 o c
1
1 2
4
0 5 3 2
0 9 -1 0
0 14 0 1
0 16 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r6 r3 o a
1
2 0
4
0 5 3 0
0 9 -1 0
0 14 0 2
0 17 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r6 r3 o b
1
2 1
4
0 5 3 1
0 9 -1 0
0 14 0 2
0 17 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r6 r3 o c
1
2 2
4
0 5 3 2
0 9 -1 0
0 14 0 2
0 17 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r6 r4 o a
1
3 0
4
0 5 3 0
0 9 -1 0
0 14 0 3
0 18 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r6 r4 o b
1
3 1
4
0 5 3 1
0 9 -1 0
0 14 0 3
0 18 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r6 r4 o c
1
3 2
4
0 5 3 2
0 9 -1 0
0 14 0 3
0 18 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r6 r5 o a
1
4 0
4
0 5 3 0
0 9 -1 0
0 14 0 4
0 19 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r6 r5 o b
1
4 1
4
0 5 3 1
0 9 -1 0
0 14 0 4
0 19 0 1
1
end_operator
begin_operator
inner_last_ring_to_outer r6 r5 o c
1
4 2
4
0 5 3 2
0 9 -1 0
0 14 0 4
0 19 0 1
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r2 r1 o a
2
0 3
16 0
4
0 1 3 0
0 6 0 1
0 10 -1 0
0 15 0 5
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r2 r1 o b
2
0 3
16 0
4
0 1 3 1
0 7 0 1
0 10 -1 0
0 15 0 5
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r2 r1 o c
2
0 3
16 0
4
0 1 3 2
0 8 0 1
0 10 -1 0
0 15 0 5
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r3 r1 o a
2
0 3
17 0
4
0 2 3 0
0 6 0 1
0 11 -1 0
0 15 1 5
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r3 r1 o b
2
0 3
17 0
4
0 2 3 1
0 7 0 1
0 11 -1 0
0 15 1 5
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r3 r1 o c
2
0 3
17 0
4
0 2 3 2
0 8 0 1
0 11 -1 0
0 15 1 5
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r3 r2 o a
2
1 3
17 0
4
0 2 3 0
0 6 0 1
0 11 1 0
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r3 r2 o b
2
1 3
17 0
4
0 2 3 1
0 7 0 1
0 11 1 0
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r3 r2 o c
2
1 3
17 0
4
0 2 3 2
0 8 0 1
0 11 1 0
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r4 r1 o a
2
0 3
18 0
4
0 3 3 0
0 6 0 1
0 12 -1 0
0 15 2 5
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r4 r1 o b
2
0 3
18 0
4
0 3 3 1
0 7 0 1
0 12 -1 0
0 15 2 5
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r4 r1 o c
2
0 3
18 0
4
0 3 3 2
0 8 0 1
0 12 -1 0
0 15 2 5
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r4 r2 o a
2
1 3
18 0
4
0 3 3 0
0 6 0 1
0 12 1 0
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r4 r2 o b
2
1 3
18 0
4
0 3 3 1
0 7 0 1
0 12 1 0
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r4 r2 o c
2
1 3
18 0
4
0 3 3 2
0 8 0 1
0 12 1 0
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r4 r3 o a
2
2 3
18 0
4
0 3 3 0
0 6 0 1
0 12 2 0
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r4 r3 o b
2
2 3
18 0
4
0 3 3 1
0 7 0 1
0 12 2 0
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r4 r3 o c
2
2 3
18 0
4
0 3 3 2
0 8 0 1
0 12 2 0
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r5 r1 o a
2
0 3
19 0
4
0 4 3 0
0 6 0 1
0 13 -1 0
0 15 3 5
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r5 r1 o b
2
0 3
19 0
4
0 4 3 1
0 7 0 1
0 13 -1 0
0 15 3 5
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r5 r1 o c
2
0 3
19 0
4
0 4 3 2
0 8 0 1
0 13 -1 0
0 15 3 5
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r5 r2 o a
2
1 3
19 0
4
0 4 3 0
0 6 0 1
0 13 1 0
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r5 r2 o b
2
1 3
19 0
4
0 4 3 1
0 7 0 1
0 13 1 0
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r5 r2 o c
2
1 3
19 0
4
0 4 3 2
0 8 0 1
0 13 1 0
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r5 r3 o a
2
2 3
19 0
4
0 4 3 0
0 6 0 1
0 13 2 0
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r5 r3 o b
2
2 3
19 0
4
0 4 3 1
0 7 0 1
0 13 2 0
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r5 r3 o c
2
2 3
19 0
4
0 4 3 2
0 8 0 1
0 13 2 0
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r5 r4 o a
2
3 3
19 0
4
0 4 3 0
0 6 0 1
0 13 3 0
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r5 r4 o b
2
3 3
19 0
4
0 4 3 1
0 7 0 1
0 13 3 0
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r5 r4 o c
2
3 3
19 0
4
0 4 3 2
0 8 0 1
0 13 3 0
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r6 r1 o a
1
0 3
4
0 5 3 0
0 6 0 1
0 14 -1 0
0 15 4 5
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r6 r1 o b
1
0 3
4
0 5 3 1
0 7 0 1
0 14 -1 0
0 15 4 5
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r6 r1 o c
1
0 3
4
0 5 3 2
0 8 0 1
0 14 -1 0
0 15 4 5
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r6 r2 o a
1
1 3
4
0 5 3 0
0 6 0 1
0 14 1 0
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r6 r2 o b
1
1 3
4
0 5 3 1
0 7 0 1
0 14 1 0
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r6 r2 o c
1
1 3
4
0 5 3 2
0 8 0 1
0 14 1 0
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r6 r3 o a
1
2 3
4
0 5 3 0
0 6 0 1
0 14 2 0
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r6 r3 o b
1
2 3
4
0 5 3 1
0 7 0 1
0 14 2 0
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r6 r3 o c
1
2 3
4
0 5 3 2
0 8 0 1
0 14 2 0
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r6 r4 o a
1
3 3
4
0 5 3 0
0 6 0 1
0 14 3 0
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r6 r4 o b
1
3 3
4
0 5 3 1
0 7 0 1
0 14 3 0
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r6 r4 o c
1
3 3
4
0 5 3 2
0 8 0 1
0 14 3 0
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r6 r5 o a
1
4 3
4
0 5 3 0
0 6 0 1
0 14 4 0
0 19 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r6 r5 o b
1
4 3
4
0 5 3 1
0 7 0 1
0 14 4 0
0 19 -1 0
1
end_operator
begin_operator
inner_top_ring_to_empty_outer r6 r5 o c
1
4 3
4
0 5 3 2
0 8 0 1
0 14 4 0
0 19 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r3 r1 r2 o a
3
0 3
1 0
17 0
4
0 2 3 0
0 11 -1 1
0 15 1 5
0 16 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r3 r1 r2 o b
3
0 3
1 1
17 0
4
0 2 3 1
0 11 -1 1
0 15 1 5
0 16 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r3 r1 r2 o c
3
0 3
1 2
17 0
4
0 2 3 2
0 11 -1 1
0 15 1 5
0 16 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r3 r2 r1 o a
3
0 0
1 3
17 0
4
0 2 3 0
0 11 1 2
0 15 5 1
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r3 r2 r1 o b
3
0 1
1 3
17 0
4
0 2 3 1
0 11 1 2
0 15 5 1
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r3 r2 r1 o c
3
0 2
1 3
17 0
4
0 2 3 2
0 11 1 2
0 15 5 1
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r1 r2 o a
3
0 3
1 0
18 0
4
0 3 3 0
0 12 -1 1
0 15 2 5
0 16 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r1 r2 o b
3
0 3
1 1
18 0
4
0 3 3 1
0 12 -1 1
0 15 2 5
0 16 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r1 r2 o c
3
0 3
1 2
18 0
4
0 3 3 2
0 12 -1 1
0 15 2 5
0 16 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r1 r3 o a
3
0 3
2 0
18 0
4
0 3 3 0
0 12 -1 2
0 15 2 5
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r1 r3 o b
3
0 3
2 1
18 0
4
0 3 3 1
0 12 -1 2
0 15 2 5
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r1 r3 o c
3
0 3
2 2
18 0
4
0 3 3 2
0 12 -1 2
0 15 2 5
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r2 r1 o a
3
0 0
1 3
18 0
4
0 3 3 0
0 12 1 3
0 15 5 2
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r2 r1 o b
3
0 1
1 3
18 0
4
0 3 3 1
0 12 1 3
0 15 5 2
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r2 r1 o c
3
0 2
1 3
18 0
4
0 3 3 2
0 12 1 3
0 15 5 2
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r2 r3 o a
3
1 3
2 0
18 0
4
0 3 3 0
0 12 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r2 r3 o b
3
1 3
2 1
18 0
4
0 3 3 1
0 12 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r2 r3 o c
3
1 3
2 2
18 0
4
0 3 3 2
0 12 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r3 r1 o a
3
0 0
2 3
18 0
4
0 3 3 0
0 12 2 3
0 15 5 2
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r3 r1 o b
3
0 1
2 3
18 0
4
0 3 3 1
0 12 2 3
0 15 5 2
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r3 r1 o c
3
0 2
2 3
18 0
4
0 3 3 2
0 12 2 3
0 15 5 2
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r3 r2 o a
3
1 0
2 3
18 0
4
0 3 3 0
0 12 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r3 r2 o b
3
1 1
2 3
18 0
4
0 3 3 1
0 12 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r4 r3 r2 o c
3
1 2
2 3
18 0
4
0 3 3 2
0 12 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r1 r2 o a
3
0 3
1 0
19 0
4
0 4 3 0
0 13 -1 1
0 15 3 5
0 16 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r1 r2 o b
3
0 3
1 1
19 0
4
0 4 3 1
0 13 -1 1
0 15 3 5
0 16 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r1 r2 o c
3
0 3
1 2
19 0
4
0 4 3 2
0 13 -1 1
0 15 3 5
0 16 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r1 r3 o a
3
0 3
2 0
19 0
4
0 4 3 0
0 13 -1 2
0 15 3 5
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r1 r3 o b
3
0 3
2 1
19 0
4
0 4 3 1
0 13 -1 2
0 15 3 5
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r1 r3 o c
3
0 3
2 2
19 0
4
0 4 3 2
0 13 -1 2
0 15 3 5
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r1 r4 o a
3
0 3
3 0
19 0
4
0 4 3 0
0 13 -1 3
0 15 3 5
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r1 r4 o b
3
0 3
3 1
19 0
4
0 4 3 1
0 13 -1 3
0 15 3 5
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r1 r4 o c
3
0 3
3 2
19 0
4
0 4 3 2
0 13 -1 3
0 15 3 5
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r2 r1 o a
3
0 0
1 3
19 0
4
0 4 3 0
0 13 1 4
0 15 5 3
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r2 r1 o b
3
0 1
1 3
19 0
4
0 4 3 1
0 13 1 4
0 15 5 3
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r2 r1 o c
3
0 2
1 3
19 0
4
0 4 3 2
0 13 1 4
0 15 5 3
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r2 r3 o a
3
1 3
2 0
19 0
4
0 4 3 0
0 13 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r2 r3 o b
3
1 3
2 1
19 0
4
0 4 3 1
0 13 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r2 r3 o c
3
1 3
2 2
19 0
4
0 4 3 2
0 13 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r2 r4 o a
3
1 3
3 0
19 0
4
0 4 3 0
0 13 1 3
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r2 r4 o b
3
1 3
3 1
19 0
4
0 4 3 1
0 13 1 3
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r2 r4 o c
3
1 3
3 2
19 0
4
0 4 3 2
0 13 1 3
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r3 r1 o a
3
0 0
2 3
19 0
4
0 4 3 0
0 13 2 4
0 15 5 3
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r3 r1 o b
3
0 1
2 3
19 0
4
0 4 3 1
0 13 2 4
0 15 5 3
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r3 r1 o c
3
0 2
2 3
19 0
4
0 4 3 2
0 13 2 4
0 15 5 3
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r3 r2 o a
3
1 0
2 3
19 0
4
0 4 3 0
0 13 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r3 r2 o b
3
1 1
2 3
19 0
4
0 4 3 1
0 13 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r3 r2 o c
3
1 2
2 3
19 0
4
0 4 3 2
0 13 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r3 r4 o a
3
2 3
3 0
19 0
4
0 4 3 0
0 13 2 3
0 17 -1 0
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r3 r4 o b
3
2 3
3 1
19 0
4
0 4 3 1
0 13 2 3
0 17 -1 0
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r3 r4 o c
3
2 3
3 2
19 0
4
0 4 3 2
0 13 2 3
0 17 -1 0
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r4 r1 o a
3
0 0
3 3
19 0
4
0 4 3 0
0 13 3 4
0 15 5 3
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r4 r1 o b
3
0 1
3 3
19 0
4
0 4 3 1
0 13 3 4
0 15 5 3
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r4 r1 o c
3
0 2
3 3
19 0
4
0 4 3 2
0 13 3 4
0 15 5 3
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r4 r2 o a
3
1 0
3 3
19 0
4
0 4 3 0
0 13 3 1
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r4 r2 o b
3
1 1
3 3
19 0
4
0 4 3 1
0 13 3 1
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r4 r2 o c
3
1 2
3 3
19 0
4
0 4 3 2
0 13 3 1
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r4 r3 o a
3
2 0
3 3
19 0
4
0 4 3 0
0 13 3 2
0 17 0 1
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r4 r3 o b
3
2 1
3 3
19 0
4
0 4 3 1
0 13 3 2
0 17 0 1
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r5 r4 r3 o c
3
2 2
3 3
19 0
4
0 4 3 2
0 13 3 2
0 17 0 1
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r1 r2 o a
2
0 3
1 0
4
0 5 3 0
0 14 -1 1
0 15 4 5
0 16 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r1 r2 o b
2
0 3
1 1
4
0 5 3 1
0 14 -1 1
0 15 4 5
0 16 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r1 r2 o c
2
0 3
1 2
4
0 5 3 2
0 14 -1 1
0 15 4 5
0 16 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r1 r3 o a
2
0 3
2 0
4
0 5 3 0
0 14 -1 2
0 15 4 5
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r1 r3 o b
2
0 3
2 1
4
0 5 3 1
0 14 -1 2
0 15 4 5
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r1 r3 o c
2
0 3
2 2
4
0 5 3 2
0 14 -1 2
0 15 4 5
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r1 r4 o a
2
0 3
3 0
4
0 5 3 0
0 14 -1 3
0 15 4 5
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r1 r4 o b
2
0 3
3 1
4
0 5 3 1
0 14 -1 3
0 15 4 5
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r1 r4 o c
2
0 3
3 2
4
0 5 3 2
0 14 -1 3
0 15 4 5
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r1 r5 o a
2
0 3
4 0
4
0 5 3 0
0 14 -1 4
0 15 4 5
0 19 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r1 r5 o b
2
0 3
4 1
4
0 5 3 1
0 14 -1 4
0 15 4 5
0 19 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r1 r5 o c
2
0 3
4 2
4
0 5 3 2
0 14 -1 4
0 15 4 5
0 19 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r2 r1 o a
2
0 0
1 3
4
0 5 3 0
0 14 1 5
0 15 5 4
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r2 r1 o b
2
0 1
1 3
4
0 5 3 1
0 14 1 5
0 15 5 4
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r2 r1 o c
2
0 2
1 3
4
0 5 3 2
0 14 1 5
0 15 5 4
0 16 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r2 r3 o a
2
1 3
2 0
4
0 5 3 0
0 14 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r2 r3 o b
2
1 3
2 1
4
0 5 3 1
0 14 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r2 r3 o c
2
1 3
2 2
4
0 5 3 2
0 14 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r2 r4 o a
2
1 3
3 0
4
0 5 3 0
0 14 1 3
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r2 r4 o b
2
1 3
3 1
4
0 5 3 1
0 14 1 3
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r2 r4 o c
2
1 3
3 2
4
0 5 3 2
0 14 1 3
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r2 r5 o a
2
1 3
4 0
4
0 5 3 0
0 14 1 4
0 16 -1 0
0 19 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r2 r5 o b
2
1 3
4 1
4
0 5 3 1
0 14 1 4
0 16 -1 0
0 19 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r2 r5 o c
2
1 3
4 2
4
0 5 3 2
0 14 1 4
0 16 -1 0
0 19 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r3 r1 o a
2
0 0
2 3
4
0 5 3 0
0 14 2 5
0 15 5 4
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r3 r1 o b
2
0 1
2 3
4
0 5 3 1
0 14 2 5
0 15 5 4
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r3 r1 o c
2
0 2
2 3
4
0 5 3 2
0 14 2 5
0 15 5 4
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r3 r2 o a
2
1 0
2 3
4
0 5 3 0
0 14 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r3 r2 o b
2
1 1
2 3
4
0 5 3 1
0 14 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r3 r2 o c
2
1 2
2 3
4
0 5 3 2
0 14 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r3 r4 o a
2
2 3
3 0
4
0 5 3 0
0 14 2 3
0 17 -1 0
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r3 r4 o b
2
2 3
3 1
4
0 5 3 1
0 14 2 3
0 17 -1 0
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r3 r4 o c
2
2 3
3 2
4
0 5 3 2
0 14 2 3
0 17 -1 0
0 18 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r3 r5 o a
2
2 3
4 0
4
0 5 3 0
0 14 2 4
0 17 -1 0
0 19 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r3 r5 o b
2
2 3
4 1
4
0 5 3 1
0 14 2 4
0 17 -1 0
0 19 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r3 r5 o c
2
2 3
4 2
4
0 5 3 2
0 14 2 4
0 17 -1 0
0 19 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r4 r1 o a
2
0 0
3 3
4
0 5 3 0
0 14 3 5
0 15 5 4
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r4 r1 o b
2
0 1
3 3
4
0 5 3 1
0 14 3 5
0 15 5 4
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r4 r1 o c
2
0 2
3 3
4
0 5 3 2
0 14 3 5
0 15 5 4
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r4 r2 o a
2
1 0
3 3
4
0 5 3 0
0 14 3 1
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r4 r2 o b
2
1 1
3 3
4
0 5 3 1
0 14 3 1
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r4 r2 o c
2
1 2
3 3
4
0 5 3 2
0 14 3 1
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r4 r3 o a
2
2 0
3 3
4
0 5 3 0
0 14 3 2
0 17 0 1
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r4 r3 o b
2
2 1
3 3
4
0 5 3 1
0 14 3 2
0 17 0 1
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r4 r3 o c
2
2 2
3 3
4
0 5 3 2
0 14 3 2
0 17 0 1
0 18 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r4 r5 o a
2
3 3
4 0
4
0 5 3 0
0 14 3 4
0 18 -1 0
0 19 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r4 r5 o b
2
3 3
4 1
4
0 5 3 1
0 14 3 4
0 18 -1 0
0 19 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r4 r5 o c
2
3 3
4 2
4
0 5 3 2
0 14 3 4
0 18 -1 0
0 19 0 1
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r5 r1 o a
2
0 0
4 3
4
0 5 3 0
0 14 4 5
0 15 5 4
0 19 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r5 r1 o b
2
0 1
4 3
4
0 5 3 1
0 14 4 5
0 15 5 4
0 19 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r5 r1 o c
2
0 2
4 3
4
0 5 3 2
0 14 4 5
0 15 5 4
0 19 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r5 r2 o a
2
1 0
4 3
4
0 5 3 0
0 14 4 1
0 16 0 1
0 19 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r5 r2 o b
2
1 1
4 3
4
0 5 3 1
0 14 4 1
0 16 0 1
0 19 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r5 r2 o c
2
1 2
4 3
4
0 5 3 2
0 14 4 1
0 16 0 1
0 19 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r5 r3 o a
2
2 0
4 3
4
0 5 3 0
0 14 4 2
0 17 0 1
0 19 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r5 r3 o b
2
2 1
4 3
4
0 5 3 1
0 14 4 2
0 17 0 1
0 19 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r5 r3 o c
2
2 2
4 3
4
0 5 3 2
0 14 4 2
0 17 0 1
0 19 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r5 r4 o a
2
3 0
4 3
4
0 5 3 0
0 14 4 3
0 18 0 1
0 19 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r5 r4 o b
2
3 1
4 3
4
0 5 3 1
0 14 4 3
0 18 0 1
0 19 -1 0
1
end_operator
begin_operator
inner_top_ring_to_outer r6 r5 r4 o c
2
3 2
4 3
4
0 5 3 2
0 14 4 3
0 18 0 1
0 19 -1 0
1
end_operator
begin_operator
movetoinner_single_empty_inner r1 o a
1
15 5
3
0 0 0 3
0 6 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r1 o b
1
15 5
3
0 0 1 3
0 7 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r1 o c
1
15 5
3
0 0 2 3
0 8 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r2 o a
2
10 0
16 0
3
0 1 0 3
0 6 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r2 o b
2
10 0
16 0
3
0 1 1 3
0 7 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r2 o c
2
10 0
16 0
3
0 1 2 3
0 8 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r3 o a
2
11 0
17 0
3
0 2 0 3
0 6 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r3 o b
2
11 0
17 0
3
0 2 1 3
0 7 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r3 o c
2
11 0
17 0
3
0 2 2 3
0 8 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r4 o a
2
12 0
18 0
3
0 3 0 3
0 6 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r4 o b
2
12 0
18 0
3
0 3 1 3
0 7 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r4 o c
2
12 0
18 0
3
0 3 2 3
0 8 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r5 o a
2
13 0
19 0
3
0 4 0 3
0 6 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r5 o b
2
13 0
19 0
3
0 4 1 3
0 7 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r5 o c
2
13 0
19 0
3
0 4 2 3
0 8 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r6 o a
1
14 0
3
0 5 0 3
0 6 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r6 o b
1
14 0
3
0 5 1 3
0 7 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoinner_single_empty_inner r6 o c
1
14 0
3
0 5 2 3
0 8 -1 0
0 9 0 1
1
end_operator
begin_operator
movetoouter_single_empty_outer r1 o a
1
15 5
3
0 0 3 0
0 6 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r1 o b
1
15 5
3
0 0 3 1
0 7 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r1 o c
1
15 5
3
0 0 3 2
0 8 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r2 o a
2
10 0
16 0
3
0 1 3 0
0 6 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r2 o b
2
10 0
16 0
3
0 1 3 1
0 7 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r2 o c
2
10 0
16 0
3
0 1 3 2
0 8 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r3 o a
2
11 0
17 0
3
0 2 3 0
0 6 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r3 o b
2
11 0
17 0
3
0 2 3 1
0 7 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r3 o c
2
11 0
17 0
3
0 2 3 2
0 8 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r4 o a
2
12 0
18 0
3
0 3 3 0
0 6 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r4 o b
2
12 0
18 0
3
0 3 3 1
0 7 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r4 o c
2
12 0
18 0
3
0 3 3 2
0 8 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r5 o a
2
13 0
19 0
3
0 4 3 0
0 6 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r5 o b
2
13 0
19 0
3
0 4 3 1
0 7 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r5 o c
2
13 0
19 0
3
0 4 3 2
0 8 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r6 o a
1
14 0
3
0 5 3 0
0 6 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r6 o b
1
14 0
3
0 5 3 1
0 7 0 1
0 9 -1 0
1
end_operator
begin_operator
movetoouter_single_empty_outer r6 o c
1
14 0
3
0 5 3 2
0 8 0 1
0 9 -1 0
1
end_operator
begin_operator
outer_last_ring_to_inner r2 r1 o a
2
0 3
16 0
4
0 1 0 3
0 6 -1 0
0 10 0 1
0 15 5 0
1
end_operator
begin_operator
outer_last_ring_to_inner r2 r1 o b
2
0 3
16 0
4
0 1 1 3
0 7 -1 0
0 10 0 1
0 15 5 0
1
end_operator
begin_operator
outer_last_ring_to_inner r2 r1 o c
2
0 3
16 0
4
0 1 2 3
0 8 -1 0
0 10 0 1
0 15 5 0
1
end_operator
begin_operator
outer_last_ring_to_inner r3 r1 o a
2
0 3
17 0
4
0 2 0 3
0 6 -1 0
0 11 0 2
0 15 5 1
1
end_operator
begin_operator
outer_last_ring_to_inner r3 r1 o b
2
0 3
17 0
4
0 2 1 3
0 7 -1 0
0 11 0 2
0 15 5 1
1
end_operator
begin_operator
outer_last_ring_to_inner r3 r1 o c
2
0 3
17 0
4
0 2 2 3
0 8 -1 0
0 11 0 2
0 15 5 1
1
end_operator
begin_operator
outer_last_ring_to_inner r3 r2 o a
2
1 3
17 0
4
0 2 0 3
0 6 -1 0
0 11 0 1
0 16 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r3 r2 o b
2
1 3
17 0
4
0 2 1 3
0 7 -1 0
0 11 0 1
0 16 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r3 r2 o c
2
1 3
17 0
4
0 2 2 3
0 8 -1 0
0 11 0 1
0 16 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r4 r1 o a
2
0 3
18 0
4
0 3 0 3
0 6 -1 0
0 12 0 3
0 15 5 2
1
end_operator
begin_operator
outer_last_ring_to_inner r4 r1 o b
2
0 3
18 0
4
0 3 1 3
0 7 -1 0
0 12 0 3
0 15 5 2
1
end_operator
begin_operator
outer_last_ring_to_inner r4 r1 o c
2
0 3
18 0
4
0 3 2 3
0 8 -1 0
0 12 0 3
0 15 5 2
1
end_operator
begin_operator
outer_last_ring_to_inner r4 r2 o a
2
1 3
18 0
4
0 3 0 3
0 6 -1 0
0 12 0 1
0 16 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r4 r2 o b
2
1 3
18 0
4
0 3 1 3
0 7 -1 0
0 12 0 1
0 16 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r4 r2 o c
2
1 3
18 0
4
0 3 2 3
0 8 -1 0
0 12 0 1
0 16 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r4 r3 o a
2
2 3
18 0
4
0 3 0 3
0 6 -1 0
0 12 0 2
0 17 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r4 r3 o b
2
2 3
18 0
4
0 3 1 3
0 7 -1 0
0 12 0 2
0 17 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r4 r3 o c
2
2 3
18 0
4
0 3 2 3
0 8 -1 0
0 12 0 2
0 17 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r5 r1 o a
2
0 3
19 0
4
0 4 0 3
0 6 -1 0
0 13 0 4
0 15 5 3
1
end_operator
begin_operator
outer_last_ring_to_inner r5 r1 o b
2
0 3
19 0
4
0 4 1 3
0 7 -1 0
0 13 0 4
0 15 5 3
1
end_operator
begin_operator
outer_last_ring_to_inner r5 r1 o c
2
0 3
19 0
4
0 4 2 3
0 8 -1 0
0 13 0 4
0 15 5 3
1
end_operator
begin_operator
outer_last_ring_to_inner r5 r2 o a
2
1 3
19 0
4
0 4 0 3
0 6 -1 0
0 13 0 1
0 16 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r5 r2 o b
2
1 3
19 0
4
0 4 1 3
0 7 -1 0
0 13 0 1
0 16 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r5 r2 o c
2
1 3
19 0
4
0 4 2 3
0 8 -1 0
0 13 0 1
0 16 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r5 r3 o a
2
2 3
19 0
4
0 4 0 3
0 6 -1 0
0 13 0 2
0 17 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r5 r3 o b
2
2 3
19 0
4
0 4 1 3
0 7 -1 0
0 13 0 2
0 17 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r5 r3 o c
2
2 3
19 0
4
0 4 2 3
0 8 -1 0
0 13 0 2
0 17 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r5 r4 o a
2
3 3
19 0
4
0 4 0 3
0 6 -1 0
0 13 0 3
0 18 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r5 r4 o b
2
3 3
19 0
4
0 4 1 3
0 7 -1 0
0 13 0 3
0 18 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r5 r4 o c
2
3 3
19 0
4
0 4 2 3
0 8 -1 0
0 13 0 3
0 18 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r6 r1 o a
1
0 3
4
0 5 0 3
0 6 -1 0
0 14 0 5
0 15 5 4
1
end_operator
begin_operator
outer_last_ring_to_inner r6 r1 o b
1
0 3
4
0 5 1 3
0 7 -1 0
0 14 0 5
0 15 5 4
1
end_operator
begin_operator
outer_last_ring_to_inner r6 r1 o c
1
0 3
4
0 5 2 3
0 8 -1 0
0 14 0 5
0 15 5 4
1
end_operator
begin_operator
outer_last_ring_to_inner r6 r2 o a
1
1 3
4
0 5 0 3
0 6 -1 0
0 14 0 1
0 16 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r6 r2 o b
1
1 3
4
0 5 1 3
0 7 -1 0
0 14 0 1
0 16 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r6 r2 o c
1
1 3
4
0 5 2 3
0 8 -1 0
0 14 0 1
0 16 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r6 r3 o a
1
2 3
4
0 5 0 3
0 6 -1 0
0 14 0 2
0 17 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r6 r3 o b
1
2 3
4
0 5 1 3
0 7 -1 0
0 14 0 2
0 17 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r6 r3 o c
1
2 3
4
0 5 2 3
0 8 -1 0
0 14 0 2
0 17 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r6 r4 o a
1
3 3
4
0 5 0 3
0 6 -1 0
0 14 0 3
0 18 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r6 r4 o b
1
3 3
4
0 5 1 3
0 7 -1 0
0 14 0 3
0 18 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r6 r4 o c
1
3 3
4
0 5 2 3
0 8 -1 0
0 14 0 3
0 18 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r6 r5 o a
1
4 3
4
0 5 0 3
0 6 -1 0
0 14 0 4
0 19 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r6 r5 o b
1
4 3
4
0 5 1 3
0 7 -1 0
0 14 0 4
0 19 0 1
1
end_operator
begin_operator
outer_last_ring_to_inner r6 r5 o c
1
4 3
4
0 5 2 3
0 8 -1 0
0 14 0 4
0 19 0 1
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r2 r1 o a
2
0 0
16 0
4
0 1 0 3
0 9 0 1
0 10 -1 0
0 15 0 5
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r2 r1 o b
2
0 1
16 0
4
0 1 1 3
0 9 0 1
0 10 -1 0
0 15 0 5
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r2 r1 o c
2
0 2
16 0
4
0 1 2 3
0 9 0 1
0 10 -1 0
0 15 0 5
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r3 r1 o a
2
0 0
17 0
4
0 2 0 3
0 9 0 1
0 11 -1 0
0 15 1 5
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r3 r1 o b
2
0 1
17 0
4
0 2 1 3
0 9 0 1
0 11 -1 0
0 15 1 5
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r3 r1 o c
2
0 2
17 0
4
0 2 2 3
0 9 0 1
0 11 -1 0
0 15 1 5
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r3 r2 o a
2
1 0
17 0
4
0 2 0 3
0 9 0 1
0 11 1 0
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r3 r2 o b
2
1 1
17 0
4
0 2 1 3
0 9 0 1
0 11 1 0
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r3 r2 o c
2
1 2
17 0
4
0 2 2 3
0 9 0 1
0 11 1 0
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r4 r1 o a
2
0 0
18 0
4
0 3 0 3
0 9 0 1
0 12 -1 0
0 15 2 5
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r4 r1 o b
2
0 1
18 0
4
0 3 1 3
0 9 0 1
0 12 -1 0
0 15 2 5
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r4 r1 o c
2
0 2
18 0
4
0 3 2 3
0 9 0 1
0 12 -1 0
0 15 2 5
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r4 r2 o a
2
1 0
18 0
4
0 3 0 3
0 9 0 1
0 12 1 0
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r4 r2 o b
2
1 1
18 0
4
0 3 1 3
0 9 0 1
0 12 1 0
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r4 r2 o c
2
1 2
18 0
4
0 3 2 3
0 9 0 1
0 12 1 0
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r4 r3 o a
2
2 0
18 0
4
0 3 0 3
0 9 0 1
0 12 2 0
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r4 r3 o b
2
2 1
18 0
4
0 3 1 3
0 9 0 1
0 12 2 0
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r4 r3 o c
2
2 2
18 0
4
0 3 2 3
0 9 0 1
0 12 2 0
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r5 r1 o a
2
0 0
19 0
4
0 4 0 3
0 9 0 1
0 13 -1 0
0 15 3 5
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r5 r1 o b
2
0 1
19 0
4
0 4 1 3
0 9 0 1
0 13 -1 0
0 15 3 5
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r5 r1 o c
2
0 2
19 0
4
0 4 2 3
0 9 0 1
0 13 -1 0
0 15 3 5
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r5 r2 o a
2
1 0
19 0
4
0 4 0 3
0 9 0 1
0 13 1 0
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r5 r2 o b
2
1 1
19 0
4
0 4 1 3
0 9 0 1
0 13 1 0
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r5 r2 o c
2
1 2
19 0
4
0 4 2 3
0 9 0 1
0 13 1 0
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r5 r3 o a
2
2 0
19 0
4
0 4 0 3
0 9 0 1
0 13 2 0
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r5 r3 o b
2
2 1
19 0
4
0 4 1 3
0 9 0 1
0 13 2 0
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r5 r3 o c
2
2 2
19 0
4
0 4 2 3
0 9 0 1
0 13 2 0
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r5 r4 o a
2
3 0
19 0
4
0 4 0 3
0 9 0 1
0 13 3 0
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r5 r4 o b
2
3 1
19 0
4
0 4 1 3
0 9 0 1
0 13 3 0
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r5 r4 o c
2
3 2
19 0
4
0 4 2 3
0 9 0 1
0 13 3 0
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r6 r1 o a
1
0 0
4
0 5 0 3
0 9 0 1
0 14 -1 0
0 15 4 5
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r6 r1 o b
1
0 1
4
0 5 1 3
0 9 0 1
0 14 -1 0
0 15 4 5
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r6 r1 o c
1
0 2
4
0 5 2 3
0 9 0 1
0 14 -1 0
0 15 4 5
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r6 r2 o a
1
1 0
4
0 5 0 3
0 9 0 1
0 14 1 0
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r6 r2 o b
1
1 1
4
0 5 1 3
0 9 0 1
0 14 1 0
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r6 r2 o c
1
1 2
4
0 5 2 3
0 9 0 1
0 14 1 0
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r6 r3 o a
1
2 0
4
0 5 0 3
0 9 0 1
0 14 2 0
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r6 r3 o b
1
2 1
4
0 5 1 3
0 9 0 1
0 14 2 0
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r6 r3 o c
1
2 2
4
0 5 2 3
0 9 0 1
0 14 2 0
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r6 r4 o a
1
3 0
4
0 5 0 3
0 9 0 1
0 14 3 0
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r6 r4 o b
1
3 1
4
0 5 1 3
0 9 0 1
0 14 3 0
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r6 r4 o c
1
3 2
4
0 5 2 3
0 9 0 1
0 14 3 0
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r6 r5 o a
1
4 0
4
0 5 0 3
0 9 0 1
0 14 4 0
0 19 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r6 r5 o b
1
4 1
4
0 5 1 3
0 9 0 1
0 14 4 0
0 19 -1 0
1
end_operator
begin_operator
outer_top_ring_to_empty_inner r6 r5 o c
1
4 2
4
0 5 2 3
0 9 0 1
0 14 4 0
0 19 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r3 r1 r2 o a
3
0 0
1 3
17 0
4
0 2 0 3
0 11 -1 1
0 15 1 5
0 16 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r3 r1 r2 o b
3
0 1
1 3
17 0
4
0 2 1 3
0 11 -1 1
0 15 1 5
0 16 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r3 r1 r2 o c
3
0 2
1 3
17 0
4
0 2 2 3
0 11 -1 1
0 15 1 5
0 16 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r3 r2 r1 o a
3
0 3
1 0
17 0
4
0 2 0 3
0 11 1 2
0 15 5 1
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r3 r2 r1 o b
3
0 3
1 1
17 0
4
0 2 1 3
0 11 1 2
0 15 5 1
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r3 r2 r1 o c
3
0 3
1 2
17 0
4
0 2 2 3
0 11 1 2
0 15 5 1
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r1 r2 o a
3
0 0
1 3
18 0
4
0 3 0 3
0 12 -1 1
0 15 2 5
0 16 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r1 r2 o b
3
0 1
1 3
18 0
4
0 3 1 3
0 12 -1 1
0 15 2 5
0 16 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r1 r2 o c
3
0 2
1 3
18 0
4
0 3 2 3
0 12 -1 1
0 15 2 5
0 16 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r1 r3 o a
3
0 0
2 3
18 0
4
0 3 0 3
0 12 -1 2
0 15 2 5
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r1 r3 o b
3
0 1
2 3
18 0
4
0 3 1 3
0 12 -1 2
0 15 2 5
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r1 r3 o c
3
0 2
2 3
18 0
4
0 3 2 3
0 12 -1 2
0 15 2 5
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r2 r1 o a
3
0 3
1 0
18 0
4
0 3 0 3
0 12 1 3
0 15 5 2
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r2 r1 o b
3
0 3
1 1
18 0
4
0 3 1 3
0 12 1 3
0 15 5 2
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r2 r1 o c
3
0 3
1 2
18 0
4
0 3 2 3
0 12 1 3
0 15 5 2
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r2 r3 o a
3
1 0
2 3
18 0
4
0 3 0 3
0 12 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r2 r3 o b
3
1 1
2 3
18 0
4
0 3 1 3
0 12 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r2 r3 o c
3
1 2
2 3
18 0
4
0 3 2 3
0 12 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r3 r1 o a
3
0 3
2 0
18 0
4
0 3 0 3
0 12 2 3
0 15 5 2
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r3 r1 o b
3
0 3
2 1
18 0
4
0 3 1 3
0 12 2 3
0 15 5 2
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r3 r1 o c
3
0 3
2 2
18 0
4
0 3 2 3
0 12 2 3
0 15 5 2
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r3 r2 o a
3
1 3
2 0
18 0
4
0 3 0 3
0 12 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r3 r2 o b
3
1 3
2 1
18 0
4
0 3 1 3
0 12 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r4 r3 r2 o c
3
1 3
2 2
18 0
4
0 3 2 3
0 12 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r1 r2 o a
3
0 0
1 3
19 0
4
0 4 0 3
0 13 -1 1
0 15 3 5
0 16 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r1 r2 o b
3
0 1
1 3
19 0
4
0 4 1 3
0 13 -1 1
0 15 3 5
0 16 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r1 r2 o c
3
0 2
1 3
19 0
4
0 4 2 3
0 13 -1 1
0 15 3 5
0 16 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r1 r3 o a
3
0 0
2 3
19 0
4
0 4 0 3
0 13 -1 2
0 15 3 5
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r1 r3 o b
3
0 1
2 3
19 0
4
0 4 1 3
0 13 -1 2
0 15 3 5
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r1 r3 o c
3
0 2
2 3
19 0
4
0 4 2 3
0 13 -1 2
0 15 3 5
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r1 r4 o a
3
0 0
3 3
19 0
4
0 4 0 3
0 13 -1 3
0 15 3 5
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r1 r4 o b
3
0 1
3 3
19 0
4
0 4 1 3
0 13 -1 3
0 15 3 5
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r1 r4 o c
3
0 2
3 3
19 0
4
0 4 2 3
0 13 -1 3
0 15 3 5
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r2 r1 o a
3
0 3
1 0
19 0
4
0 4 0 3
0 13 1 4
0 15 5 3
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r2 r1 o b
3
0 3
1 1
19 0
4
0 4 1 3
0 13 1 4
0 15 5 3
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r2 r1 o c
3
0 3
1 2
19 0
4
0 4 2 3
0 13 1 4
0 15 5 3
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r2 r3 o a
3
1 0
2 3
19 0
4
0 4 0 3
0 13 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r2 r3 o b
3
1 1
2 3
19 0
4
0 4 1 3
0 13 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r2 r3 o c
3
1 2
2 3
19 0
4
0 4 2 3
0 13 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r2 r4 o a
3
1 0
3 3
19 0
4
0 4 0 3
0 13 1 3
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r2 r4 o b
3
1 1
3 3
19 0
4
0 4 1 3
0 13 1 3
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r2 r4 o c
3
1 2
3 3
19 0
4
0 4 2 3
0 13 1 3
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r3 r1 o a
3
0 3
2 0
19 0
4
0 4 0 3
0 13 2 4
0 15 5 3
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r3 r1 o b
3
0 3
2 1
19 0
4
0 4 1 3
0 13 2 4
0 15 5 3
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r3 r1 o c
3
0 3
2 2
19 0
4
0 4 2 3
0 13 2 4
0 15 5 3
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r3 r2 o a
3
1 3
2 0
19 0
4
0 4 0 3
0 13 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r3 r2 o b
3
1 3
2 1
19 0
4
0 4 1 3
0 13 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r3 r2 o c
3
1 3
2 2
19 0
4
0 4 2 3
0 13 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r3 r4 o a
3
2 0
3 3
19 0
4
0 4 0 3
0 13 2 3
0 17 -1 0
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r3 r4 o b
3
2 1
3 3
19 0
4
0 4 1 3
0 13 2 3
0 17 -1 0
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r3 r4 o c
3
2 2
3 3
19 0
4
0 4 2 3
0 13 2 3
0 17 -1 0
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r4 r1 o a
3
0 3
3 0
19 0
4
0 4 0 3
0 13 3 4
0 15 5 3
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r4 r1 o b
3
0 3
3 1
19 0
4
0 4 1 3
0 13 3 4
0 15 5 3
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r4 r1 o c
3
0 3
3 2
19 0
4
0 4 2 3
0 13 3 4
0 15 5 3
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r4 r2 o a
3
1 3
3 0
19 0
4
0 4 0 3
0 13 3 1
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r4 r2 o b
3
1 3
3 1
19 0
4
0 4 1 3
0 13 3 1
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r4 r2 o c
3
1 3
3 2
19 0
4
0 4 2 3
0 13 3 1
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r4 r3 o a
3
2 3
3 0
19 0
4
0 4 0 3
0 13 3 2
0 17 0 1
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r4 r3 o b
3
2 3
3 1
19 0
4
0 4 1 3
0 13 3 2
0 17 0 1
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r5 r4 r3 o c
3
2 3
3 2
19 0
4
0 4 2 3
0 13 3 2
0 17 0 1
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r1 r2 o a
2
0 0
1 3
4
0 5 0 3
0 14 -1 1
0 15 4 5
0 16 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r1 r2 o b
2
0 1
1 3
4
0 5 1 3
0 14 -1 1
0 15 4 5
0 16 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r1 r2 o c
2
0 2
1 3
4
0 5 2 3
0 14 -1 1
0 15 4 5
0 16 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r1 r3 o a
2
0 0
2 3
4
0 5 0 3
0 14 -1 2
0 15 4 5
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r1 r3 o b
2
0 1
2 3
4
0 5 1 3
0 14 -1 2
0 15 4 5
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r1 r3 o c
2
0 2
2 3
4
0 5 2 3
0 14 -1 2
0 15 4 5
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r1 r4 o a
2
0 0
3 3
4
0 5 0 3
0 14 -1 3
0 15 4 5
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r1 r4 o b
2
0 1
3 3
4
0 5 1 3
0 14 -1 3
0 15 4 5
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r1 r4 o c
2
0 2
3 3
4
0 5 2 3
0 14 -1 3
0 15 4 5
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r1 r5 o a
2
0 0
4 3
4
0 5 0 3
0 14 -1 4
0 15 4 5
0 19 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r1 r5 o b
2
0 1
4 3
4
0 5 1 3
0 14 -1 4
0 15 4 5
0 19 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r1 r5 o c
2
0 2
4 3
4
0 5 2 3
0 14 -1 4
0 15 4 5
0 19 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r2 r1 o a
2
0 3
1 0
4
0 5 0 3
0 14 1 5
0 15 5 4
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r2 r1 o b
2
0 3
1 1
4
0 5 1 3
0 14 1 5
0 15 5 4
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r2 r1 o c
2
0 3
1 2
4
0 5 2 3
0 14 1 5
0 15 5 4
0 16 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r2 r3 o a
2
1 0
2 3
4
0 5 0 3
0 14 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r2 r3 o b
2
1 1
2 3
4
0 5 1 3
0 14 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r2 r3 o c
2
1 2
2 3
4
0 5 2 3
0 14 1 2
0 16 -1 0
0 17 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r2 r4 o a
2
1 0
3 3
4
0 5 0 3
0 14 1 3
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r2 r4 o b
2
1 1
3 3
4
0 5 1 3
0 14 1 3
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r2 r4 o c
2
1 2
3 3
4
0 5 2 3
0 14 1 3
0 16 -1 0
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r2 r5 o a
2
1 0
4 3
4
0 5 0 3
0 14 1 4
0 16 -1 0
0 19 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r2 r5 o b
2
1 1
4 3
4
0 5 1 3
0 14 1 4
0 16 -1 0
0 19 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r2 r5 o c
2
1 2
4 3
4
0 5 2 3
0 14 1 4
0 16 -1 0
0 19 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r3 r1 o a
2
0 3
2 0
4
0 5 0 3
0 14 2 5
0 15 5 4
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r3 r1 o b
2
0 3
2 1
4
0 5 1 3
0 14 2 5
0 15 5 4
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r3 r1 o c
2
0 3
2 2
4
0 5 2 3
0 14 2 5
0 15 5 4
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r3 r2 o a
2
1 3
2 0
4
0 5 0 3
0 14 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r3 r2 o b
2
1 3
2 1
4
0 5 1 3
0 14 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r3 r2 o c
2
1 3
2 2
4
0 5 2 3
0 14 2 1
0 16 0 1
0 17 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r3 r4 o a
2
2 0
3 3
4
0 5 0 3
0 14 2 3
0 17 -1 0
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r3 r4 o b
2
2 1
3 3
4
0 5 1 3
0 14 2 3
0 17 -1 0
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r3 r4 o c
2
2 2
3 3
4
0 5 2 3
0 14 2 3
0 17 -1 0
0 18 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r3 r5 o a
2
2 0
4 3
4
0 5 0 3
0 14 2 4
0 17 -1 0
0 19 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r3 r5 o b
2
2 1
4 3
4
0 5 1 3
0 14 2 4
0 17 -1 0
0 19 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r3 r5 o c
2
2 2
4 3
4
0 5 2 3
0 14 2 4
0 17 -1 0
0 19 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r4 r1 o a
2
0 3
3 0
4
0 5 0 3
0 14 3 5
0 15 5 4
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r4 r1 o b
2
0 3
3 1
4
0 5 1 3
0 14 3 5
0 15 5 4
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r4 r1 o c
2
0 3
3 2
4
0 5 2 3
0 14 3 5
0 15 5 4
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r4 r2 o a
2
1 3
3 0
4
0 5 0 3
0 14 3 1
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r4 r2 o b
2
1 3
3 1
4
0 5 1 3
0 14 3 1
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r4 r2 o c
2
1 3
3 2
4
0 5 2 3
0 14 3 1
0 16 0 1
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r4 r3 o a
2
2 3
3 0
4
0 5 0 3
0 14 3 2
0 17 0 1
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r4 r3 o b
2
2 3
3 1
4
0 5 1 3
0 14 3 2
0 17 0 1
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r4 r3 o c
2
2 3
3 2
4
0 5 2 3
0 14 3 2
0 17 0 1
0 18 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r4 r5 o a
2
3 0
4 3
4
0 5 0 3
0 14 3 4
0 18 -1 0
0 19 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r4 r5 o b
2
3 1
4 3
4
0 5 1 3
0 14 3 4
0 18 -1 0
0 19 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r4 r5 o c
2
3 2
4 3
4
0 5 2 3
0 14 3 4
0 18 -1 0
0 19 0 1
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r5 r1 o a
2
0 3
4 0
4
0 5 0 3
0 14 4 5
0 15 5 4
0 19 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r5 r1 o b
2
0 3
4 1
4
0 5 1 3
0 14 4 5
0 15 5 4
0 19 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r5 r1 o c
2
0 3
4 2
4
0 5 2 3
0 14 4 5
0 15 5 4
0 19 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r5 r2 o a
2
1 3
4 0
4
0 5 0 3
0 14 4 1
0 16 0 1
0 19 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r5 r2 o b
2
1 3
4 1
4
0 5 1 3
0 14 4 1
0 16 0 1
0 19 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r5 r2 o c
2
1 3
4 2
4
0 5 2 3
0 14 4 1
0 16 0 1
0 19 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r5 r3 o a
2
2 3
4 0
4
0 5 0 3
0 14 4 2
0 17 0 1
0 19 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r5 r3 o b
2
2 3
4 1
4
0 5 1 3
0 14 4 2
0 17 0 1
0 19 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r5 r3 o c
2
2 3
4 2
4
0 5 2 3
0 14 4 2
0 17 0 1
0 19 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r5 r4 o a
2
3 3
4 0
4
0 5 0 3
0 14 4 3
0 18 0 1
0 19 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r5 r4 o b
2
3 3
4 1
4
0 5 1 3
0 14 4 3
0 18 0 1
0 19 -1 0
1
end_operator
begin_operator
outer_top_ring_to_inner r6 r5 r4 o c
2
3 3
4 2
4
0 5 2 3
0 14 4 3
0 18 0 1
0 19 -1 0
1
end_operator
0
