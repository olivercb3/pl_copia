(define (problem ext4) (:domain reserves)
  (:objects
    habitacio0 - habitacio
    habitacio1 - habitacio
    reserva0 - reserva
    reserva1 - reserva
    reserva2 - reserva
    dia1 - dia
    dia2 - dia
    dia3 - dia

  )
  (:init
    (lliure habitacio0 dia1)
    (lliure habitacio0 dia2)
    (lliure habitacio0 dia3)
    (lliure habitacio1 dia1)
    (lliure habitacio1 dia2)
    (lliure habitacio1 dia3)
    (reservada reserva0 dia1)
    (reservada reserva1 dia2)
    (reservada reserva2 dia3)
    (= (capacitat_habitacio habitacio0) 5)
    (= (capacitat_habitacio habitacio1) 4)
    (= (capacitat_reserva reserva0) 3)
    (= (capacitat_reserva reserva1) 2)
    (= (capacitat_reserva reserva2) 2)
    (= (desperdici_places) 0)
    (= (habitacions_diferents) 0)
    (= (reserves_correctes) 0)
    (= (reserves_pendents) 0)
  )

  (:goal (forall (?reserva - reserva) (processada ?reserva)))
  (:metric minimize (+ (* 1000 (reserves_pendents)) (+ (* 90 (habitacions_diferents)) (desperdici_places))))
)
