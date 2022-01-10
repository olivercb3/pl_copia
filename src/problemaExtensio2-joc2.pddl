(define (problem ext2) (:domain reserves)
  (:objects
    habitacio0 - habitacio
    habitacio1 - habitacio
    habitacio2 - habitacio
    habitacio3 - habitacio
    habitacio4 - habitacio
    habitacio5 - habitacio
    habitacio6 - habitacio
    habitacio7 - habitacio
    habitacio8 - habitacio
    habitacio9 - habitacio
    reserva0 - reserva
    reserva1 - reserva
    reserva2 - reserva
    reserva3 - reserva
    dia0 - dia
    dia1 - dia
    dia2 - dia
    dia3 - dia
    dia4 - dia
    dia5 - dia
    dia6 - dia
  )
  (:init
    (reservada reserva0 dia6)
    (reservada reserva1 dia3)
    (reservada reserva1 dia4)
    (reservada reserva1 dia5)
    (reservada reserva1 dia6)
    (reservada reserva2 dia5)
    (reservada reserva2 dia6)
    (reservada reserva3 dia6)
    (= (capacitat_habitacio habitacio0) 1)
    (= (capacitat_habitacio habitacio1) 3)
    (= (capacitat_habitacio habitacio2) 2)
    (= (capacitat_habitacio habitacio3) 1)
    (= (capacitat_habitacio habitacio4) 4)
    (= (capacitat_habitacio habitacio5) 3)
    (= (capacitat_habitacio habitacio6) 3)
    (= (capacitat_habitacio habitacio7) 2)
    (= (capacitat_habitacio habitacio8) 2)
    (= (capacitat_habitacio habitacio9) 1)
    (= (capacitat_reserva reserva0) 1)
    (= (capacitat_reserva reserva1) 2)
    (= (capacitat_reserva reserva2) 2)
    (= (capacitat_reserva reserva3) 2)
    (= (orientacio_habitacio habitacio0) 2)
    (= (orientacio_habitacio habitacio1) 3)
    (= (orientacio_habitacio habitacio2) 3)
    (= (orientacio_habitacio habitacio3) 1)
    (= (orientacio_habitacio habitacio4) 0)
    (= (orientacio_habitacio habitacio5) 0)
    (= (orientacio_habitacio habitacio6) 2)
    (= (orientacio_habitacio habitacio7) 2)
    (= (orientacio_habitacio habitacio8) 2)
    (= (orientacio_habitacio habitacio9) 3)
    (= (orientacio_reserva reserva0) 0)
    (= (orientacio_reserva reserva1) 1)
    (= (orientacio_reserva reserva2) 2)
    (= (orientacio_reserva reserva3) 3)
    (= (reserves_pendents) 0) 
    (= (reserves_correctes) 0) 
    (= (reserves_mal_orientades) 0)
  )
 (:goal (forall (?reserva - reserva) (processada ?reserva)))
 (:metric minimize (+ (* 1000 (reserves_pendents)) (reserves_mal_orientades)))
)
