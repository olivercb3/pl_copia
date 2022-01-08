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
  )
  (:init
    (lliure habitacio0 dia1)
    (lliure habitacio0 dia2)
    (lliure habitacio1 dia1)
    (lliure habitacio1 dia2)
    (lliure habitacio2 dia1)
    (lliure habitacio2 dia2)
    (lliure habitacio3 dia1)
    (lliure habitacio3 dia2)
    (reservada reserva0 dia1)
    (reservada reserva0 dia2)
    (reservada reserva1 dia1)
    (reservada reserva2 dia2)
    (reservada reserva4 dia2)
    (= (capacitat_habitacio habitacio0) 3)
    (= (capacitat_habitacio habitacio1) 2)
    (= (capacitat_habitacio habitacio2) 5)
    (= (capacitat_habitacio habitacio3) 1)
    (= (capacitat_reserva reserva0) 2)
    (= (capacitat_reserva reserva1) 1)
    (= (capacitat_reserva reserva2) 3)
    (= (capacitat_reserva reserva3) 5)
    (= (capacitat_reserva reserva4) 4)
  )

  (:goal (forall (?reserva - reserva) (correcta ?reserva)))
  (:metric minimize (desperdici_places))
)
