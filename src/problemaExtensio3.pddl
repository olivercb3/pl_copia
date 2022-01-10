(define (problem ext3) (:domain reserves)
  (:objects
    habitacio0 - habitacio
    habitacio1 - habitacio
    habitacio2 - habitacio
    habitacio3 - habitacio
    reserva0 - reserva
    reserva1 - reserva
    reserva2 - reserva
    reserva3 - reserva
    reserva4 - reserva
    dia1 - dia
    dia2 - dia
    dia3 - dia
  )
  (:init
    (reservada reserva0 dia1)
    (reservada reserva1 dia1)
    (reservada reserva2 dia2)
    (reservada reserva3 dia2)
    (reservada reserva4 dia3)
    (= (capacitat_habitacio habitacio0) 10)
    (= (capacitat_habitacio habitacio1) 5)
    (= (capacitat_habitacio habitacio2) 15)
    (= (capacitat_habitacio habitacio3) 3)
    (= (capacitat_reserva reserva0) 10)
    (= (capacitat_reserva reserva1) 15)
    (= (capacitat_reserva reserva2) 5)
    (= (capacitat_reserva reserva3) 4)
    (= (capacitat_reserva reserva4) 3)
    (= (desperdici_places) 0)
    (= (reserves_correctes) 0)
    (= (reserves_pendents) 0)
  )

  (:goal (forall (?reserva - reserva) (processada ?reserva)))
  (:metric minimize (+ (* 1000 (reserves_pendents)) (* 1 (desperdici_places))))
)
