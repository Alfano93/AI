(define (problem pb1)
  (:domain star)
  (:objects A B C O
            R1 R2 R3)
  (:init
    ;;types 
    (Post A) (Post B) (Post C)     ;; A B C are the OUTER POSTS
    (PostO O)                      ;; O is the central post Post O
    (Ring R1) (Ring R2) (Ring R3)  ;; R1, R2, R3 are the Rings

    ;;sizes
    (Bigger R2 R3)                 ;; R2 is bigger than R3
    (Bigger R1 R2)                 ;; R1 is bigger than R2
    (Bigger R1 R3)                 ;; R1 is bigger than R3

    ;; R1 > R2 > R3
    ;; R1 > R2
    ;; R1 > R3
    ;; R2 > R3

    ;;locations
    (At R1 A) ;; R1 is at Post A
    (At R2 A) ;; R2 is at Post A
    (At R3 A) ;; R3 is at Post A

    ;;order
    (On R2 R1) ;; R2 is on top of R1
    (On R3 R2) ;; R3 is on top of R2
   ;; (Free R3)  ;; R3 is Free

    ;;   [__R3__]
    ;;  [___R2___]
    ;; [____R1____]

   
 )

  (:goal
    (and (At R1 C)  ;; R1 is at C
         (At R2 C)  ;; R2 is at C
         (At R3 C)  ;; R3 is at C
         (On R2 R1) ;; R2 is on top of R1
         (On R3 R2) ;; R3 is on top of R2
         ;;(Free R3)   R3 is Free
    )    
  )
)
