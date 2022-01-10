(define (problem ext1) (:domain reserves)
  (:objects
    habitacio0 - habitacio
    habitacio1 - habitacio
    reserva0 - reserva
    reserva1 - reserva
    reserva2 - reserva
    reserva3 - reserva
    dia1 - dia
    dia2 - dia
  )
  (:init
    (reservada reserva0 dia1)
    (reservada reserva0 dia2)
    (reservada reserva1 dia1)
    (reservada reserva2 dia2)
    (reservada reserva3 dia2)
    (= (capacitat_habitacio habitacio0) 3)
    (= (capacitat_habitacio habitacio1) 2)
    (= (capacitat_reserva reserva0) 3)
    (= (capacitat_reserva reserva1) 1)
    (= (capacitat_reserva reserva2) 3)
    (= (reserves_pendents) 0)
    (= (reserves_correctes) 0)
  )

  (:goal (forall (?reserva - reserva) (processada ?reserva)))
  (:metric maximize (+ (reserves_correctes) 0))
)
