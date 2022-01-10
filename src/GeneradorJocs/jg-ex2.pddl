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
    reserva4 - reserva
    reserva5 - reserva
    reserva6 - reserva
    reserva7 - reserva
    reserva8 - reserva
    reserva9 - reserva
    reserva10 - reserva
    reserva11 - reserva
    reserva12 - reserva
    reserva13 - reserva
    reserva14 - reserva
    dia0 - dia
    dia1 - dia
    dia2 - dia
    dia3 - dia
    dia4 - dia
    dia5 - dia
    dia6 - dia
    dia7 - dia
    dia8 - dia
    dia9 - dia
    dia10 - dia
    dia11 - dia
    dia12 - dia
    dia13 - dia
    dia14 - dia
    dia15 - dia
    dia16 - dia
    dia17 - dia
    dia18 - dia
    dia19 - dia
    dia20 - dia
    dia21 - dia
    dia22 - dia
    dia23 - dia
    dia24 - dia
    dia25 - dia
    dia26 - dia
    dia27 - dia
    dia28 - dia
    dia29 - dia
  )
  (:init
    (reservada reserva0 dia19)
    (reservada reserva0 dia20)
    (reservada reserva0 dia21)
    (reservada reserva0 dia22)
    (reservada reserva0 dia23)
    (reservada reserva0 dia24)
    (reservada reserva0 dia25)
    (reservada reserva0 dia26)
    (reservada reserva0 dia27)
    (reservada reserva0 dia28)
    (reservada reserva1 dia12)
    (reservada reserva1 dia13)
    (reservada reserva1 dia14)
    (reservada reserva2 dia12)
    (reservada reserva2 dia13)
    (reservada reserva2 dia14)
    (reservada reserva2 dia15)
    (reservada reserva2 dia16)
    (reservada reserva3 dia22)
    (reservada reserva3 dia23)
    (reservada reserva3 dia24)
    (reservada reserva4 dia4)
    (reservada reserva4 dia5)
    (reservada reserva4 dia6)
    (reservada reserva4 dia7)
    (reservada reserva4 dia8)
    (reservada reserva4 dia9)
    (reservada reserva5 dia25)
    (reservada reserva5 dia26)
    (reservada reserva5 dia27)
    (reservada reserva5 dia28)
    (reservada reserva5 dia29)
    (reservada reserva6 dia0)
    (reservada reserva6 dia1)
    (reservada reserva6 dia2)
    (reservada reserva6 dia3)
    (reservada reserva6 dia4)
    (reservada reserva6 dia5)
    (reservada reserva6 dia6)
    (reservada reserva6 dia7)
    (reservada reserva6 dia8)
    (reservada reserva6 dia9)
    (reservada reserva7 dia19)
    (reservada reserva7 dia20)
    (reservada reserva7 dia21)
    (reservada reserva8 dia12)
    (reservada reserva8 dia13)
    (reservada reserva8 dia14)
    (reservada reserva8 dia15)
    (reservada reserva8 dia16)
    (reservada reserva8 dia17)
    (reservada reserva9 dia0)
    (reservada reserva9 dia1)
    (reservada reserva9 dia2)
    (reservada reserva9 dia3)
    (reservada reserva9 dia4)
    (reservada reserva9 dia5)
    (reservada reserva10 dia5)
    (reservada reserva10 dia6)
    (reservada reserva10 dia7)
    (reservada reserva10 dia8)
    (reservada reserva10 dia9)
    (reservada reserva11 dia17)
    (reservada reserva11 dia18)
    (reservada reserva11 dia19)
    (reservada reserva11 dia20)
    (reservada reserva11 dia21)
    (reservada reserva11 dia22)
    (reservada reserva11 dia23)
    (reservada reserva11 dia24)
    (reservada reserva11 dia25)
    (reservada reserva12 dia21)
    (reservada reserva12 dia22)
    (reservada reserva13 dia12)
    (reservada reserva13 dia13)
    (reservada reserva13 dia14)
    (reservada reserva13 dia15)
    (reservada reserva13 dia16)
    (reservada reserva13 dia17)
    (reservada reserva13 dia18)
    (reservada reserva13 dia19)
    (reservada reserva13 dia20)
    (reservada reserva13 dia21)
    (reservada reserva14 dia25)
    (reservada reserva14 dia26)
    (reservada reserva14 dia27)
    (reservada reserva14 dia28)
    (= (capacitat_habitacio habitacio0) 1)
    (= (capacitat_habitacio habitacio1) 2)
    (= (capacitat_habitacio habitacio2) 1)
    (= (capacitat_habitacio habitacio3) 4)
    (= (capacitat_habitacio habitacio4) 2)
    (= (capacitat_habitacio habitacio5) 2)
    (= (capacitat_habitacio habitacio6) 2)
    (= (capacitat_habitacio habitacio7) 4)
    (= (capacitat_habitacio habitacio8) 2)
    (= (capacitat_habitacio habitacio9) 3)
    (= (capacitat_reserva reserva0) 2)
    (= (capacitat_reserva reserva1) 1)
    (= (capacitat_reserva reserva2) 2)
    (= (capacitat_reserva reserva3) 1)
    (= (capacitat_reserva reserva4) 1)
    (= (capacitat_reserva reserva5) 1)
    (= (capacitat_reserva reserva6) 1)
    (= (capacitat_reserva reserva7) 2)
    (= (capacitat_reserva reserva8) 2)
    (= (capacitat_reserva reserva9) 2)
    (= (capacitat_reserva reserva10) 2)
    (= (capacitat_reserva reserva11) 2)
    (= (capacitat_reserva reserva12) 2)
    (= (capacitat_reserva reserva13) 2)
    (= (capacitat_reserva reserva14) 2)
    (= (orientacio_habitacio habitacio0) 3)
    (= (orientacio_habitacio habitacio1) 0)
    (= (orientacio_habitacio habitacio2) 3)
    (= (orientacio_habitacio habitacio3) 0)
    (= (orientacio_habitacio habitacio4) 1)
    (= (orientacio_habitacio habitacio5) 3)
    (= (orientacio_habitacio habitacio6) 2)
    (= (orientacio_habitacio habitacio7) 0)
    (= (orientacio_habitacio habitacio8) 2)
    (= (orientacio_habitacio habitacio9) 1)
    (= (orientacio_reserva reserva0) 2)
    (= (orientacio_reserva reserva1) 0)
    (= (orientacio_reserva reserva2) 1)
    (= (orientacio_reserva reserva3) 2)
    (= (orientacio_reserva reserva4) 0)
    (= (orientacio_reserva reserva5) 2)
    (= (orientacio_reserva reserva6) 3)
    (= (orientacio_reserva reserva7) 2)
    (= (orientacio_reserva reserva8) 0)
    (= (orientacio_reserva reserva9) 0)
    (= (orientacio_reserva reserva10) 0)
    (= (orientacio_reserva reserva11) 2)
    (= (orientacio_reserva reserva12) 2)
    (= (orientacio_reserva reserva13) 3)
    (= (orientacio_reserva reserva14) 0)
    (= (reserves_pendents) 0) 
    (= (reserves_correctes) 0) 
    (= (reserves_mal_orientades) 0)
  )
 (:goal (forall (?reserva - reserva) (processada ?reserva)))
 (:metric minimize (+ (* 1000 (reserves_pendents)) (reserves_mal_orientades)))
)
