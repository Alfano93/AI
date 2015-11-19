An Aggie does not lie, cheat or steal or tolerate those who do.

How to run:

This implementation uses Fast-Downward and requires 3 steps to produce a result. For some reason, it must be run by root using 
sudo. 

insider the Planner directory

1.  ./fast-downward.py --translate staract.pddl starprob.pddl
                                   [Actions]    [Problem]

n = 3 rings -> starprob.pddl
n = 4 rings -> starprob4.pddl
n = 5 rings -> starprob5.pddl
n = 6 rings -> starprob6.pddl

Replace the problem file with the corrisponding number of rings problem file. 

2. ./fast-downward.py --preprocess output.sas

3. ./fast-downward.py output --search "astar(lmcut())"

Steps 2 and 3 will not change between problems.

Resources

http://www.fast-downward.org/
https://en.wikipedia.org/wiki/Planning_Domain_Definition_Language

http://www.cs.wm.edu/~pkstoc/boca.pdf      This paper presents an equation to calculate the min 
                                           number of moves to solve the star puzzle. The equation 
                                           was used to verify the results of the planner.

*There are other options that can be used in step 3. The full list of searching algorithms and heuristics can be found at 
 fast-downward.org
 
 
Number of steps to solve n-ring star puzzle

Number of Rings       Steps
       3                12
       4                20
       5                32
       6                48
       
       
Example Solution for n = 6

Moving from outer to inner

parameters: (ring being moved, ring under ring being moved, moving to this post, moving from this post)
for singles:    (ring being moved, moving to this post, moving from this post)

Moving from inner to outer, the post parameters are swapped

Solution

outer_top_ring_to_empty_inner r6 r5 o a (1)
movetoouter_single_empty_outer r6 o b (1)
outer_top_ring_to_empty_inner r5 r4 o a (1)
movetoouter_single_empty_outer r5 o c (1)
outer_top_ring_to_empty_inner r4 r3 o a (1)
outer_last_ring_to_inner r6 r4 o b (1)
inner_top_ring_to_outer r6 r4 r5 o c (1)
movetoouter_single_empty_outer r4 o b (1)
outer_top_ring_to_empty_inner r3 r2 o a (1)
outer_last_ring_to_inner r4 r3 o b (1)
inner_top_ring_to_outer r4 r3 r2 o a (1)
movetoouter_single_empty_outer r3 o b (1)
outer_top_ring_to_empty_inner r4 r2 o a (1)
inner_last_ring_to_outer r4 r3 o b (1)
outer_top_ring_to_empty_inner r2 r1 o a (1)
outer_top_ring_to_inner r6 r5 r2 o c (1)
inner_top_ring_to_outer r6 r2 r1 o a (1)
outer_last_ring_to_inner r5 r2 o c (1)
inner_top_ring_to_outer r5 r2 r4 o b (1)
outer_top_ring_to_inner r6 r1 r2 o a (1)
inner_top_ring_to_outer r6 r2 r5 o b (1)
movetoouter_single_empty_outer r2 o c (1)
movetoinner_single_empty_inner r1 o a (1)
outer_last_ring_to_inner r2 r1 o c (1)
inner_top_ring_to_empty_outer r2 r1 o a (1)
movetoouter_single_empty_outer r1 o c (1)
movetoinner_single_empty_inner r2 o a (1)
inner_last_ring_to_outer r2 r1 o c (1)
outer_top_ring_to_empty_inner r6 r5 o b (1)
inner_last_ring_to_outer r6 r2 o c (1)
outer_top_ring_to_empty_inner r5 r4 o b (1)
movetoouter_single_empty_outer r5 o a (1)
outer_top_ring_to_empty_inner r4 r3 o b (1)
outer_top_ring_to_inner r6 r2 r4 o c (1)
inner_top_ring_to_outer r6 r4 r5 o a (1)
inner_last_ring_to_outer r4 r2 o c (1)
movetoinner_single_empty_inner r3 o b (1)
outer_top_ring_to_inner r4 r2 r3 o c (1)
inner_top_ring_to_empty_outer r4 r3 o b (1)
inner_last_ring_to_outer r3 r2 o c (1)
movetoinner_single_empty_inner r4 o b (1)
outer_top_ring_to_inner r6 r5 r4 o a (1)
inner_top_ring_to_empty_outer r6 r4 o b (1)
inner_last_ring_to_outer r4 r3 o c (1)
movetoinner_single_empty_inner r5 o a (1)
inner_last_ring_to_outer r5 r4 o c (1)
movetoinner_single_empty_inner r6 o b (1)
inner_last_ring_to_outer r6 r5 o c (1)

Actual search time: 0.596069s [t=0.629464s]
Expanded 3641 state(s).
Reopened 10 state(s).
Evaluated 3824 state(s).
Evaluations: 3824
Generated 10800 state(s).
Expanded until last jump: 3638 state(s).
Reopened until last jump: 10 state(s).
Evaluated until last jump: 3821 state(s).
Generated until last jump: 10795 state(s).
Number of registered states: 3824
Search time: 0.597003s
Total time: 0.629475s
Solution found.
Peak memory: 4008 KB

