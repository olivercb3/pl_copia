(define (problem ext4) (:domain reserves)
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
    (reservada reserva0 dia15)
    (reservada reserva0 dia16)
    (reservada reserva0 dia17)
    (reservada reserva0 dia18)
    (reservada reserva0 dia19)
    (reservada reserva0 dia20)
    (reservada reserva0 dia21)
    (reservada reserva0 dia22)
    (reservada reserva0 dia23)
    (reservada reserva0 dia24)
    (reservada reserva1 dia17)
    (reservada reserva1 dia18)
    (reservada reserva1 dia19)
    (reservada reserva1 dia20)
    (reservada reserva1 dia21)
    (reservada reserva1 dia22)
    (reservada reserva2 dia12)
    (reservada reserva2 dia13)
    (reservada reserva2 dia14)
    (reservada reserva2 dia15)
    (reservada reserva3 dia20)
    (reservada reserva3 dia21)
    (reservada reserva4 dia5)
    (reservada reserva4 dia6)
    (reservada reserva4 dia7)
    (reservada reserva4 dia8)
    (reservada reserva4 dia9)
    (reservada reserva4 dia10)
    (reservada reserva4 dia11)
    (reservada reserva4 dia12)
    (reservada reserva4 dia13)
    (reservada reserva4 dia14)
    (reservada reserva5 dia5)
    (reservada reserva5 dia6)
    (reservada reserva6 dia20)
    (reservada reserva6 dia21)
    (reservada reserva6 dia22)
    (reservada reserva6 dia23)
    (reservada reserva6 dia24)
    (reservada reserva6 dia25)
    (reservada reserva6 dia26)
    (reservada reserva6 dia27)
    (reservada reserva6 dia28)
    (reservada reserva6 dia29)
    (reservada reserva7 dia2)
    (reservada reserva7 dia3)
    (reservada reserva7 dia4)
    (reservada reserva7 dia5)
    (reservada reserva7 dia6)
    (reservada reserva7 dia7)
    (reservada reserva7 dia8)
    (reservada reserva8 dia22)
    (reservada reserva8 dia23)
    (reservada reserva8 dia24)
    (reservada reserva9 dia20)
    (reservada reserva9 dia21)
    (reservada reserva9 dia22)
    (reservada reserva9 dia23)
    (reservada reserva9 dia24)
    (reservada reserva9 dia25)
    (reservada reserva9 dia26)
    (reservada reserva10 dia9)
    (reservada reserva10 dia10)
    (reservada reserva10 dia11)
    (reservada reserva11 dia6)
    (reservada reserva12 dia14)
    (reservada reserva12 dia15)
    (reservada reserva12 dia16)
    (reservada reserva12 dia17)
    (reservada reserva12 dia18)
    (reservada reserva12 dia19)
    (reservada reserva12 dia20)
    (reservada reserva12 dia21)
    (reservada reserva12 dia22)
    (reservada reserva13 dia3)
    (reservada reserva13 dia4)
    (reservada reserva13 dia5)
    (reservada reserva14 dia28)
    (reservada reserva14 dia29)
    (= (capacitat_habitacio habitacio0) 4)
    (= (capacitat_habitacio habitacio1) 4)
    (= (capacitat_habitacio habitacio2) 1)
    (= (capacitat_habitacio habitacio3) 2)
    (= (capacitat_habitacio habitacio4) 1)
    (= (capacitat_habitacio habitacio5) 2)
    (= (capacitat_habitacio habitacio6) 2)
    (= (capacitat_habitacio habitacio7) 1)
    (= (capacitat_habitacio habitacio8) 1)
    (= (capacitat_habitacio habitacio9) 3)
    (= (capacitat_reserva reserva0) 2)
    (= (capacitat_reserva reserva1) 2)
    (= (capacitat_reserva reserva2) 1)
    (= (capacitat_reserva reserva3) 2)
    (= (capacitat_reserva reserva4) 2)
    (= (capacitat_reserva reserva5) 1)
    (= (capacitat_reserva reserva6) 1)
    (= (capacitat_reserva reserva7) 2)
    (= (capacitat_reserva reserva8) 2)
    (= (capacitat_reserva reserva9) 1)
    (= (capacitat_reserva reserva10) 1)
    (= (capacitat_reserva reserva11) 2)
    (= (capacitat_reserva reserva12) 2)
    (= (capacitat_reserva reserva13) 1)
    (= (capacitat_reserva reserva14) 1)
    (= (reserves_pendents) 0) 
    (= (reserves_correctes) 0) 
    (= (desperdici_places) 0)
    (= (habitacions_diferents) 0) 
  )
 (:goal (forall (?reserva - reserva) (processada ?reserva)))
 (:metric minimize (+ (* 1000 (reserves_pendents)) (+ (* 90 (habitacions_diferents)) (desperdici_places))))
)
