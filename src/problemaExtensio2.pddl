(define (problem ext2) (:domain reserves)
  (:objects
    habitacio0 - habitacio
    habitacio1 - habitacio
    reserva0 - reserva
    reserva1 - reserva
    reserva2 - reserva
    dia1 - dia
    dia2 - dia
  )
  (:init
    (lliure habitacio0 dia1)
    (lliure habitacio0 dia2)
    (lliure habitacio1 dia1)
    (lliure habitacio1 dia2)
    (reservada reserva0 dia1)
    (reservada reserva0 dia2)
    (reservada reserva1 dia1)
    (reservada reserva2 dia2)
    (= (capacitat_habitacio habitacio0) 3)
    (= (capacitat_habitacio habitacio1) 2)
    (= (capacitat_reserva reserva0) 2)
    (= (capacitat_reserva reserva1) 1)
    (= (capacitat_reserva reserva2) 3)
    ; N = 0  E = 1  S = 2  O = 3
    (= (orientacio_habitacio habitacio0) 0)
    (= (orientacio_habitacio habitacio1) 3)
    (= (orientacio_reserva reserva0) 2)
    (= (orientacio_reserva reserva1) 1)
    (= (orientacio_reserva reserva2) 0)
    (= (reserves_mal_orientades) 0)
  )

  (:goal (forall (?reserva - reserva) (correcta ?reserva)))
  (:metric minimize (reserves_mal_orientades))
)
