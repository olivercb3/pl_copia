(define (problem ext3) (:domain reserves)
  (:objects
    habitacio0 - habitacio
    habitacio1 - habitacio
    habitacio2 - habitacio
    habitacio3 - habitacio
    habitacio4 - habitacio
    habitacio5 - habitacio
    habitacio6 - habitacio
    habitacio7 - habitacio
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
    (reservada reserva0 dia3)
    (reservada reserva0 dia4)
    (reservada reserva0 dia5)
    (reservada reserva0 dia6)
    (reservada reserva0 dia7)
    (reservada reserva0 dia8)
    (reservada reserva0 dia9)
    (reservada reserva0 dia10)
    (reservada reserva0 dia11)
    (reservada reserva0 dia12)
    (reservada reserva1 dia17)
    (reservada reserva1 dia18)
    (reservada reserva1 dia19)
    (reservada reserva1 dia20)
    (reservada reserva1 dia21)
    (reservada reserva1 dia22)
    (reservada reserva1 dia23)
    (reservada reserva1 dia24)
    (reservada reserva2 dia29)
    (reservada reserva3 dia12)
    (reservada reserva3 dia13)
    (reservada reserva3 dia14)
    (reservada reserva3 dia15)
    (reservada reserva3 dia16)
    (reservada reserva3 dia17)
    (reservada reserva3 dia18)
    (reservada reserva3 dia19)
    (reservada reserva3 dia20)
    (reservada reserva3 dia21)
    (reservada reserva4 dia13)
    (reservada reserva4 dia14)
    (reservada reserva4 dia15)
    (reservada reserva4 dia16)
    (reservada reserva4 dia17)
    (reservada reserva4 dia18)
    (reservada reserva4 dia19)
    (reservada reserva4 dia20)
    (reservada reserva5 dia26)
    (reservada reserva5 dia27)
    (reservada reserva5 dia28)
    (reservada reserva5 dia29)
    (reservada reserva6 dia27)
    (reservada reserva6 dia28)
    (reservada reserva6 dia29)
    (reservada reserva7 dia27)
    (reservada reserva7 dia28)
    (reservada reserva7 dia29)
    (reservada reserva8 dia29)
    (reservada reserva9 dia4)
    (reservada reserva9 dia5)
    (reservada reserva9 dia6)
    (reservada reserva9 dia7)
    (reservada reserva9 dia8)
    (reservada reserva10 dia24)
    (reservada reserva10 dia25)
    (reservada reserva10 dia26)
    (reservada reserva10 dia27)
    (reservada reserva10 dia28)
    (reservada reserva10 dia29)
    (reservada reserva11 dia15)
    (reservada reserva11 dia16)
    (reservada reserva11 dia17)
    (reservada reserva11 dia18)
    (reservada reserva12 dia2)
    (reservada reserva12 dia3)
    (reservada reserva12 dia4)
    (reservada reserva12 dia5)
    (reservada reserva13 dia19)
    (reservada reserva13 dia20)
    (reservada reserva13 dia21)
    (reservada reserva13 dia22)
    (reservada reserva13 dia23)
    (reservada reserva13 dia24)
    (reservada reserva13 dia25)
    (reservada reserva13 dia26)
    (reservada reserva13 dia27)
    (reservada reserva13 dia28)
    (reservada reserva14 dia19)
    (reservada reserva14 dia20)
    (reservada reserva14 dia21)
    (reservada reserva14 dia22)
    (reservada reserva14 dia23)
    (reservada reserva14 dia24)
    (reservada reserva14 dia25)
    (reservada reserva14 dia26)
    (reservada reserva14 dia27)
    (reservada reserva14 dia28)
    (= (capacitat_habitacio habitacio0) 2)
    (= (capacitat_habitacio habitacio1) 3)
    (= (capacitat_habitacio habitacio2) 1)
    (= (capacitat_habitacio habitacio3) 3)
    (= (capacitat_habitacio habitacio4) 3)
    (= (capacitat_habitacio habitacio5) 1)
    (= (capacitat_habitacio habitacio6) 3)
    (= (capacitat_habitacio habitacio7) 2)
    (= (capacitat_reserva reserva0) 2)
    (= (capacitat_reserva reserva1) 1)
    (= (capacitat_reserva reserva2) 2)
    (= (capacitat_reserva reserva3) 1)
    (= (capacitat_reserva reserva4) 2)
    (= (capacitat_reserva reserva5) 2)
    (= (capacitat_reserva reserva6) 1)
    (= (capacitat_reserva reserva7) 2)
    (= (capacitat_reserva reserva8) 1)
    (= (capacitat_reserva reserva9) 1)
    (= (capacitat_reserva reserva10) 2)
    (= (capacitat_reserva reserva11) 1)
    (= (capacitat_reserva reserva12) 2)
    (= (capacitat_reserva reserva13) 2)
    (= (capacitat_reserva reserva14) 1)
    (= (reserves_pendents) 0) 
    (= (reserves_correctes) 0) 
    (= (desperdici_places) 0)
  )
 (:goal (forall (?reserva - reserva) (processada ?reserva)))
 (:metric minimize (+ (* 1000 (reserves_pendents)) (* 1 (desperdici_places))))
)
