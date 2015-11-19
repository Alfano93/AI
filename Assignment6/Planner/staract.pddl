;; Star-prob actions take-2

(define (domain star-prob)
  (:requirements :strips)
  (:predicates (On ?obj ?obj)
               (At ?obj ?obj)
               (Bigger ?obj ?obj)
               (Ring ?obj)
               (Outer ?obj)
               (Inner ?obj)
               (Empty ?obj)
               (Last ?obj)
               (Top ?obj))

  (:action MOVETOINNER_SINGLE_EMPTY_INNER
    :parameters(?r1 ?pi ?po)

    :precondition (and (Ring ?r1)
                       (Inner ?pi)
                       (Outer ?po)
                       (Top ?r1)
                       (Last ?r1)
                       (Empty ?pi)
                       (At ?r1 ?po)
                   )
    :effect (and (not (Empty ?pi))
                 (Empty ?po)
                 (not (At ?r1 ?po))
                 (At ?r1 ?pi)
            )
  )
  
  (:action MOVETOOUTER_SINGLE_EMPTY_OUTER
    :parameters(?r1 ?pi ?po)

    :precondition (and (Ring ?r1)
                       (Inner ?pi)
                       (Outer ?po)
                       (Top ?r1)
                       (Last ?r1)
                       (Empty ?po)
                       (At ?r1 ?pi)
                   )
    :effect (and (not (Empty ?po))
                 (Empty ?pi)
                 (not (At ?r1 ?pi))
                 (At ?r1 ?po)
            )
  )

  (:action OUTER_TOP_RING_TO_EMPTY_INNER
    :parameters (?r1 ?r2 ?pi ?po)
    :precondition (and (Ring ?r1) 
                       (Ring ?r2)
                       (Inner ?pi)
                       (Outer ?po)
                       (Empty ?pi)
                       (Top ?r1)
                       (On ?r1 ?r2)
                       (At ?r1 ?po)
                       (At ?r2 ?po)
                       (Bigger ?r2 ?r1)
                   )
     
   :effect (and (not (On ?r1 ?r2))
                (not (At ?r1 ?po))
                (not (Empty ?pi))
                (Top ?r2)
                (Last ?r1)
                (At ?r1 ?pi)
           )
  )

  (:action OUTER_TOP_RING_TO_INNER
    :parameters (?r1 ?r2 ?r3 ?pi ?po)
    :precondition (and (Ring ?r1)
                       (Ring ?r2)
                       (Ring ?r3)
                       (Inner ?pi)
                       (Outer ?po)
                       (On ?r1 ?r2)
                       (At ?r1 ?po)
                       (At ?r2 ?po)
                       (At ?r3 ?pi)
                       (Top ?r1)
                       (Top ?r3)
                       (Bigger ?r3 ?r1)
                 )

    :effect (and (not (At ?r1 ?po))
                 (not (Top ?r3))
                 (not (On ?r1 ?r2))
                 (On ?r1 ?r3)
                 (Top ?r2)
                 (At ?r1 ?pi)
            )
  )

  (:action OUTER_LAST_RING_TO_INNER
    :parameters (?r1 ?r2 ?pi ?po)
    :precondition (and (Ring ?r1)
                       (Ring ?r2)
                       (Inner ?pi)
                       (Outer ?po)
                       (Last ?r1)
                       (Top ?r1)
                       (Top ?r2)
                       (Bigger ?r2 ?r1)
                       (At ?r1 ?po)
                       (At ?r2 ?pi)
                   )
   :effect (and (not (At ?r1 ?po))
                (not (Top ?r2))
                (not (Last ?r1))
                (Empty ?po)
                (On ?r1 ?r2)
                (At ?r1 ?pi)
           )
  )
  
  (:action INNER_TOP_RING_TO_EMPTY_OUTER
    :parameters (?r1 ?r2 ?pi ?po)
    :precondition (and (Ring ?r1) 
                       (Ring ?r2)
                       (Inner ?pi)
                       (Outer ?po)
                       (Empty ?po)
                       (Top ?r1)
                       (On ?r1 ?r2)
                       (At ?r1 ?pi)
                       (At ?r2 ?pi)
                   )
     
   :effect (and (not (On ?r1 ?r2))
                (not (At ?r1 ?pi))
                (not (Empty ?po))
                (Top ?r2)
                (Last ?r1)
                (At ?r1 ?po)
           )
  )

  (:action INNER_TOP_RING_TO_OUTER
    :parameters (?r1 ?r2 ?r3 ?pi ?po)
    :precondition (and (Ring ?r1)
                       (Ring ?r2)
                       (Ring ?r3)
                       (Inner ?pi)
                       (Outer ?po)
                       (On ?r1 ?r2)
                       (At ?r1 ?pi)
                       (At ?r2 ?pi)
                       (At ?r3 ?po)
                       (Top ?r1)
                       (Top ?r3)
                       (Bigger ?r3 ?r1)
                 )
    :effect (and (not (At ?r1 ?pi))
                 (not (Top ?r3))
                 (not (On ?r1 ?r2))
                 (On ?r1 ?r3)
                 (Top ?r2)
                 (At ?r1 ?po)
            )
  )

  (:action INNER_LAST_RING_TO_OUTER
    :parameters (?r1 ?r2 ?pi ?po)
    :precondition (and (Ring ?r1)
                       (Ring ?r2)
                       (Inner ?pi)
                       (Outer ?po)
                       (Last ?r1)
                       (Top ?r1)
                       (Top ?r2)
                       (Bigger ?r2 ?r1)
                       (At ?r1 ?pi)
                       (At ?r2 ?po)
                   )
   :effect (and (not (At ?r1 ?pi))
                (not (Top ?r2))
                (not (Last ?r1))
                (Empty ?pi)
                (On ?r1 ?r2)
                (At ?r1 ?po)
           )
  )

)
                        

























