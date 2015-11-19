;; Star Problem Take-2
(define (problem pb1)
  (:domain star-prob)
  (:objects R1 R2 R3 A B C O)

  (:init
    ;;types
    (Inner O) (Empty O) 
    (Outer A) (Outer B) (Outer C)
    (Empty B) (Empty C)
    (Ring R1) (Ring R2) (Ring R3)

    ;;locations
    (At R1 A)
    (At R2 A)
    (At R3 A)

    ;;sizes
    (Bigger R1 R2)
    (Bigger R2 R3)
    (Bigger R1 R3)

    ;;order
    (On R3 R2)
    (On R2 R1)
    (Top R3)
    (Last R1)

    ;;possibly add empty poles
  )

  (:goal
    (and (At R1 C)
         (At R2 C)
         (At R3 C)
         (On R3 R2)
         (On R2 R1)
         (Top R3)
         (Last R1)
     )
  )
)
    
