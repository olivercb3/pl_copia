(define (problem ext3) (:domain reserves)
  (:objects
    habitacio0 - habitacio
    habitacio1 - habitacio
    habitacio2 - habitacio
    habitacio3 - habitacio
    habitacio4 - habitacio
    reserva0 - reserva
    reserva1 - reserva
    reserva2 - reserva
    reserva3 - reserva
    reserva4 - reserva
    reserva5 - reserva
    dia0 - dia
    dia1 - dia
    dia2 - dia
    dia3 - dia
    dia4 - dia
  )
  (:init
    (reservada reserva0 dia3)
    (reservada reserva1 dia4)
    (reservada reserva2 dia3)
    (reservada reserva2 dia4)
    (reservada reserva3 dia1)
    (reservada reserva4 dia4)
    (reservada reserva5 dia2)
    (reservada reserva5 dia3)
    (reservada reserva5 dia4)
    (= (capacitat_habitacio habitacio0) 1)
    (= (capacitat_habitacio habitacio1) 3)
    (= (capacitat_habitacio habitacio2) 2)
    (= (capacitat_habitacio habitacio3) 4)
    (= (capacitat_habitacio habitacio4) 1)
    (= (capacitat_reserva reserva0) 2)
    (= (capacitat_reserva reserva1) 2)
    (= (capacitat_reserva reserva2) 2)
    (= (capacitat_reserva reserva3) 1)
    (= (capacitat_reserva reserva4) 1)
    (= (capacitat_reserva reserva5) 1)
    (= (reserves_pendents) 0) 
    (= (reserves_correctes) 0) 
    (= (desperdici_places) 0)
  )
 (:goal (forall (?reserva - reserva) (processada ?reserva)))
 (:metric minimize (+ (* 1000 (reserves_pendents)) (* 1 (desperdici_places))))
)
