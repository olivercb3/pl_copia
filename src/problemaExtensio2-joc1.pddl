(define (problem ext2) (:domain reserves)
  (:objects
    habitacio0 - habitacio
    habitacio1 - habitacio
    habitacio2 - habitacio
    reserva0 - reserva
    reserva1 - reserva
    reserva2 - reserva
    reserva3 - reserva
    reserva4 - reserva
    dia0 - dia
    dia1 - dia
    dia2 - dia
    dia3 - dia
    dia4 - dia
    dia5 - dia
    dia6 - dia
  )
  (:init
    (reservada reserva0 dia4)
    (reservada reserva0 dia5)
    (reservada reserva0 dia6)
    (reservada reserva1 dia4)
    (reservada reserva1 dia5)
    (reservada reserva1 dia6)
    (reservada reserva2 dia3)
    (reservada reserva3 dia4)
    (reservada reserva3 dia5)
    (reservada reserva3 dia6)
    (reservada reserva4 dia5)
    (reservada reserva4 dia6)
    (= (capacitat_habitacio habitacio0) 3)
    (= (capacitat_habitacio habitacio1) 4)
    (= (capacitat_habitacio habitacio2) 2)
    (= (capacitat_reserva reserva0) 1)
    (= (capacitat_reserva reserva1) 1)
    (= (capacitat_reserva reserva2) 1)
    (= (capacitat_reserva reserva3) 2)
    (= (capacitat_reserva reserva4) 2)
    (= (orientacio_habitacio habitacio0) 3)
    (= (orientacio_habitacio habitacio1) 2)
    (= (orientacio_habitacio habitacio2) 0)
    (= (orientacio_reserva reserva0) 2)
    (= (orientacio_reserva reserva1) 3)
    (= (orientacio_reserva reserva2) 3)
    (= (orientacio_reserva reserva3) 3)
    (= (orientacio_reserva reserva4) 2)
    (= (reserves_pendents) 0) 
    (= (reserves_correctes) 0) 
    (= (reserves_mal_orientades) 0)
  )
 (:goal (forall (?reserva - reserva) (processada ?reserva)))
 (:metric minimize (+ (* 1000 (reserves_pendents)) (reserves_mal_orientades)))
)
