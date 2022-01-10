(define (problem ext2) (:domain reserves)
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
    (lliure habitacio1 dia1)
    (lliure habitacio1 dia2)
    (lliure habitacio0 dia3)
    (lliure habitacio1 dia3)
    (reservada reserva0 dia1)
    (reservada reserva1 dia2)
    (reservada reserva2 dia3)
    (= (capacitat_habitacio habitacio0) 3)
    (= (capacitat_habitacio habitacio1) 2)
    (= (capacitat_reserva reserva0) 2)
    (= (capacitat_reserva reserva1) 1)
    (= (capacitat_reserva reserva2) 1)
    (= (reserves_correctes) 0)
    (= (reserves_pendents) 0)
    ; N = 0  E = 1  S = 2  O = 3
    (= (orientacio_habitacio habitacio0) 0)
    (= (orientacio_habitacio habitacio1) 1)
    (= (orientacio_reserva reserva0) 1)
    (= (orientacio_reserva reserva1) 0)
    (= (orientacio_reserva reserva2) 1)
    (= (reserves_mal_orientades) 0)
  )

  (:goal (forall (?reserva - reserva) (processada ?reserva)))
  (:metric minimize (+ (* 1000 (reserves_pendents)) (reserves_mal_orientades)))
)
