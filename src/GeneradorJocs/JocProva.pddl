(define (problem basic) (:domain reserves)
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
    (lliure habitacio0 dia0)
    (lliure habitacio0 dia1)
    (lliure habitacio0 dia2)
    (lliure habitacio0 dia3)
    (lliure habitacio0 dia4)
    (lliure habitacio1 dia0)
    (lliure habitacio1 dia1)
    (lliure habitacio1 dia2)
    (lliure habitacio1 dia3)
    (lliure habitacio1 dia4)
    (lliure habitacio2 dia0)
    (lliure habitacio2 dia1)
    (lliure habitacio2 dia2)
    (lliure habitacio2 dia3)
    (lliure habitacio2 dia4)
    (lliure habitacio3 dia0)
    (lliure habitacio3 dia1)
    (lliure habitacio3 dia2)
    (lliure habitacio3 dia3)
    (lliure habitacio3 dia4)
    (lliure habitacio4 dia0)
    (lliure habitacio4 dia1)
    (lliure habitacio4 dia2)
    (lliure habitacio4 dia3)
    (lliure habitacio4 dia4)
    (reservada reserva0 dia2)
    (reservada reserva0 dia3)
    (reservada reserva0 dia4)
    (reservada reserva1 dia4)
    (reservada reserva2 dia0)
    (reservada reserva3 dia3)
    (reservada reserva3 dia4)
    (reservada reserva4 dia3)
    (reservada reserva4 dia4)
    (reservada reserva5 dia3)
    (reservada reserva5 dia4)
    (= (capacitat_habitacio habitacio0) 4)
    (= (capacitat_habitacio habitacio1) 3)
    (= (capacitat_habitacio habitacio2) 2)
    (= (capacitat_habitacio habitacio3) 1)
    (= (capacitat_habitacio habitacio4) 2)
    (= (capacitat_reserva reserva0) 2)
    (= (capacitat_reserva reserva1) 2)
    (= (capacitat_reserva reserva2) 1)
    (= (capacitat_reserva reserva3) 2)
    (= (capacitat_reserva reserva4) 2)
    (= (capacitat_reserva reserva5) 2)
  )
(:goal (forall (?reserva - reserva) (correcta ?reserva)))
)
