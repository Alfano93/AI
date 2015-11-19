;; Star Problem Take-2
(define (problem pb1)
  (:domain star-prob)
  (:objects R1 R2 R3 R4 A B C O)

  (:init
    ;;types
    (Inner O) (Empty O) 
    (Outer A) (Outer B) (Outer C)
    (Empty B) (Empty C)
    (Ring R1) (Ring R2) (Ring R3) (Ring R4)

    ;;locations
    (At R1 A)
    (At R2 A)
    (At R3 A)
    (At R4 A)

    ;;sizes
    (Bigger R1 R2)
    (Bigger R1 R3)
    (Bigger R1 R4)
    (Bigger R2 R3)
    (Bigger R2 R4)
    (Bigger R3 R4)

    ;;order
    (On R4 R3)
    (On R3 R2)
    (On R2 R1)
    (Top R4)
    (Last R1)

    ;;possibly add empty poles
  )

  (:goal
    (and (At R1 C)
         (At R2 C)
         (At R3 C)
         (At R4 C)
         (On R4 R3)
         (On R3 R2)
         (On R2 R1)
         (Top R4)
         (Last R1)
     )
  )
)
    
