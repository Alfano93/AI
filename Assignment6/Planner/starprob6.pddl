;; Star Problem Take-2
(define (problem pb1)
  (:domain star-prob)
  (:objects R1 R2 R3 R4 R5 R6 A B C O)

  (:init
    ;;types
    (Inner O) (Empty O) 
    (Outer A) (Outer B) (Outer C)
    (Empty B) (Empty C)
    (Ring R1) (Ring R2) (Ring R3) (Ring R4) (Ring R5) (Ring R6)

    ;;locations
    (At R1 A)
    (At R2 A)
    (At R3 A)
    (At R4 A)
    (At R5 A)
    (At R6 A)

    ;;sizes
    (Bigger R1 R2)
    (Bigger R1 R3)
    (Bigger R1 R4)
    (Bigger R1 R5)
    (Bigger R1 R6)    

    (Bigger R2 R3)
    (Bigger R2 R4)
    (Bigger R2 R5)
    (Bigger R2 R6)

    (Bigger R3 R4)
    (Bigger R3 R5)
    (Bigger R3 R6)

    (Bigger R4 R5)
    (Bigger R4 R6)

    (Bigger R5 R6)

    ;;order
    (On R6 R5)
    (On R5 R4)
    (On R4 R3)
    (On R3 R2)
    (On R2 R1)
    (Top R6)
    (Last R1)

    ;;possibly add empty poles
  )

  (:goal
    (and (At R1 C)
         (At R2 C)
         (At R3 C)
         (At R4 C)
         (At R5 C)
         (At R6 C)
         (On R6 R5)
         (On R5 R4)
         (On R4 R3)
         (On R3 R2)
         (On R2 R1)
         (Top R6)
         (Last R1)
     )
  )
)
    
