(define (domain star)
(:requirements :strips)
(:predicates (On ?obj ?obj)
             (At ?obj ?place)
             (Bigger ?obj ?obj)
             (Ring ?obj)
             (Post ?place)
             (Free ?obj)
             (Empty ?obj)
             (PostO ?place))

;;(:action MOVE_TO_O_SINGLE          ;;Moves a free ring (the top one) to a post with nothing on it
;;   :parameters (?r1 ?p ?pO)        ;;needs a ring r1, post p and post 'O'
   
;;   :precondition (and (At ?r1 ?p)   ;;r1 at p 
;;                      (Ring ?r1)    ;;r1 is a Ring
;;                      (Free ?r1)    ;;r1 is Free (nothing on top of it)
;;                      (Post ?p)     ;;p is a Post
;;                      (PostO ?pO))  ;;pO is the center post 'O'
       
;;   :effect (and (not (At ?r1 ?p))  ;;r1 is no longer on post p 
;;                (At ?r1 ?pO )))     ;;r1 is now on post 'O'

(:action MOVE_TO_EMPTY_CENTER
   :parameters (?r1 ?r2 ?p ?pO)          ;;Rings r1,r2 Outer post p, inner post pO

   :preconditions (and (At ?r1 ?p) (At ?r2 ?p) ;; r1 and r2 are at the outer post
                       (Empty ?pO)             ;; the innerpost is empty
                       (Free ?r1)              ;; r1 is free
                       (On ?r1 ?r2)            ;; r1 is on top of r2
                       (Ring ?r1) (Ring ?r2)
                       (PostO ?pO)
                       (Post ?p))
                 
 
   :effect (and (not ( At ?r1 ?p))              ;; r1 is no longer at p
                (At ?r1 ?pO)                   ;; r1 is at pO
                (not ( Empty ?pO))              ;; pO is no longer empty
                (not ( On ?r1 ?r2))             ;; r1 is no longer on r2
                (Free ?r2)))                     ;; r2 is now Free
        


(:action MOVE_TO_O_TWO                  ;;Moves a ring r1 from post p on top of ring r2 on post 'O'
   :parameters (?r1 ?r2 ?p ?pO)         ;;Needs two rings r1 and r2, post p, and post'O'
   
   :precondition (and (At ?r1 ?p) (At ?r2 ?p)           ;; r1 is at p
                      (On ?r1 ?r2)                      ;; r1 is on r2
                      (Free ?r1)                        ;; r1 is free
                      (Ring ?r1) (Ring ?r2)             ;; r1 is a ring, r2 is a ring
                      (Post ?p) (PostO ?pO)             ;; p is a post, pO is post 'O'
                      )                                 ;; r2 is bigger than r1
                     
   :effect (and (not (At ?r1 ?p))                       ;; r1 is no longer at post p
                (Free ?r2)                              ;; r2 is Free (r1 is no longer on top of it)
                (At ?r1 ?pO)                            ;; r1 is at post 'O'
                (not(On ?r1 ?r2))                       ;; r1 is no longer on top of r2
                (Free ?r1)))                            ;; r1 is a Free ring
   
(:action MOVE_TO_O_FROM_RING_TO_RING                   ;; move Ring r1 from Ring r2 on Post p1 TO on top of Ring r3 on Post 'O'
   :parameters (?r1 ?r2 ?r3 ?p ?pO)                    ;; needs Rings r1,r2,r3; Post p1; PostO pO

   :precondition (and (On ?r1 ?r2)                      ;; r1 is on top of r2
                      (Ring ?r1) (Ring ?r2) (Ring ?r3)  ;; r1,r2,r3 are Rings
                      (At ?r1 ?p) (At ?r2 ?p)           ;; r1 is at Post p, r2 is at Post p
                      (Free ?r1) (Free ?r3)             ;; r1 is Free, r3 is Free
                      (Post ?p) (PostO ?pO)             ;; p is a Post, p0 is PostO
                      (At ?r3 ?pO)                      ;; r3 is at Post O
                      (Bigger ?r3 ?r1))                 ;; r3 is bigger than r1

   :effect (and (not ( On ?r1 ?r2))                     ;; r1 is no longer on top of r2
                (not ( At ?r1 ?p))                      ;; r1 is no longer on p1
                (not(Free ?r3))                         ;; r3 is no longer Free (it has r1 on top of it)
                (Free ?r2) (Free ?r1)                   ;; r2 is Free (r1 is not on top of it anymore) r1 is still Free
                (On ?r1 ?r3)                            ;; r1 is on top of r3
                (At ?r1 ?pO)))                          ;; r1 is on Post O

;;(:action MOVEFROMSINGLE                                 ;;Moves a single free ring from Post O to an outer Post
;;   :parameters (?r1 ?pO ?p)                             ;;Needs Ring r1, PostO pO, Post p

;;   :precondition (and (At ?r1 ?pO)                      ;; r1 is at PostO pO 
;;                      (Free ?r1)                        ;; r1 is Free
;;                      (Ring ?r1)                        ;; r1 is a Ring
;;                      (Post ?p) (PostO ?pO))            ;; p is an outer Post, pO is Post 'O'

;;   :effect (and (not (At ?r1 ?pO))                      ;; r1 is no longer at PostO pO
;;                (At ?r1 ?p)                             ;; r1 is at Post p
;;                (Free ?r1)))                            ;; r1 is still Free

(:action MOVEFROM                                       ;; Moves Ring r1 from PostO pO on top of Ring r2 at Post p
   :parameters (?r1 ?r2 ?pO ?p)                         ;; Rings r1,r2, PostO pO, Post p

   :precondition (and (At ?r1 ?pO) (At ?r2 ?pO)         ;; r1 is at PostO pO, r2 is at Post p
                      (Free ?r1)                        ;; r1 is Free
                      (Ring ?r1) (Ring ?r2)             ;; r1 is a Ring, r2 is a Ring
                      (Post ?p)(PostO ?pO)              ;; p is a Post, p0 is PostO
                      )                                 ;; r2 is bigger than r1
           
   :effect (and (not (At ?r1 ?pO))                      ;; r1 is no longer at pO 
                (At ?r1 ?p)                             ;; r1 is at Post p 
                (Free ?r2)                              ;; r2 is Free (r1 is no longer on top of it)
                (not (On ?r1 ?r2))))                    ;; r1 is no longer on top of r2                         

(:action MOVEFROMFROMRING                               ;; Moves Ring r1 from on top of Ring r2 at PostO pO to on top of Ring r3 at Outer Post p
   :parameters (?r1 ?r2 ?r3 ?pO ?p)                     ;; Rings r1, r2, r3, PostO pO, Post p

   :precondition (and (On ?r1 ?r2)                      ;; r1 is on top of r2
                      (Ring ?r1) (Ring ?r2) (Ring ?r3)  ;; r1 is a Ring, r2 is a Ring, r3 is a Ring
                      (Free ?r1) (Free ?r3)             ;; r1 is Free, r3 is Free
                      (At ?r1 ?pO) (At ?r2 ?pO)         ;; r1 is at PostO pO, r2 is at PostO pO
                      (Post ?p) (PostO ?pO)             ;; p is a Post, pO is PostO
                      (At ?r3 ?p)                       ;; r3 is at Post p
                      (Bigger ?r3 ?r1))                 ;; r3 is bigger than r1

   :effect (and (not (On ?r1 ?r2))                      ;; r1 is no longer on top of r2
                (not (At ?r1 ?pO))                      ;; r1 is no longer at PostO pO
                (not(Free ?r3))                         ;; r3 is no longer free (it has r1 on top of it)
                (Free ?r2) (Free ?r1)                   ;; r2 is Free (r1 is no longer on top of it), r1 is still Free 
                (On ?r1 ?r3)                            ;; r1 is on top of r3
                (At ?r1 ?p))))                         ;; r1 is at Post p
