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
    (reservada reserva0 dia28)
    (reservada reserva0 dia29)
    (reservada reserva1 dia23)
    (reservada reserva1 dia24)
    (reservada reserva1 dia25)
    (reservada reserva1 dia26)
    (reservada reserva2 dia21)
    (reservada reserva2 dia22)
    (reservada reserva2 dia23)
    (reservada reserva2 dia24)
    (reservada reserva3 dia15)
    (reservada reserva3 dia16)
    (reservada reserva3 dia17)
    (reservada reserva4 dia27)
    (reservada reserva5 dia5)
    (reservada reserva5 dia6)
    (reservada reserva5 dia7)
    (reservada reserva5 dia8)
    (reservada reserva5 dia9)
    (reservada reserva5 dia10)
    (reservada reserva6 dia15)
    (reservada reserva6 dia16)
    (reservada reserva6 dia17)
    (reservada reserva7 dia4)
    (reservada reserva7 dia5)
    (reservada reserva7 dia6)
    (reservada reserva7 dia7)
    (reservada reserva7 dia8)
    (reservada reserva7 dia9)
    (reservada reserva7 dia10)
    (reservada reserva8 dia6)
    (reservada reserva8 dia7)
    (reservada reserva8 dia8)
    (reservada reserva8 dia9)
    (reservada reserva8 dia10)
    (reservada reserva8 dia11)
    (reservada reserva9 dia7)
    (reservada reserva9 dia8)
    (reservada reserva9 dia9)
    (reservada reserva9 dia10)
    (reservada reserva9 dia11)
    (reservada reserva9 dia12)
    (reservada reserva9 dia13)
    (reservada reserva10 dia6)
    (reservada reserva10 dia7)
    (reservada reserva10 dia8)
    (reservada reserva10 dia9)
    (reservada reserva10 dia10)
    (reservada reserva11 dia24)
    (reservada reserva11 dia25)
    (reservada reserva11 dia26)
    (reservada reserva11 dia27)
    (reservada reserva12 dia26)
    (reservada reserva12 dia27)
    (reservada reserva12 dia28)
    (reservada reserva12 dia29)
    (reservada reserva13 dia20)
    (reservada reserva14 dia7)
    (reservada reserva14 dia8)
    (reservada reserva14 dia9)
    (reservada reserva14 dia10)
    (reservada reserva14 dia11)
    (reservada reserva14 dia12)
    (= (capacitat_habitacio habitacio0) 2)
    (= (capacitat_habitacio habitacio1) 1)
    (= (capacitat_habitacio habitacio2) 2)
    (= (capacitat_habitacio habitacio3) 3)
    (= (capacitat_habitacio habitacio4) 2)
    (= (capacitat_habitacio habitacio5) 2)
    (= (capacitat_habitacio habitacio6) 1)
    (= (capacitat_habitacio habitacio7) 3)
    (= (capacitat_habitacio habitacio8) 4)
    (= (capacitat_habitacio habitacio9) 2)
    (= (capacitat_reserva reserva0) 2)
    (= (capacitat_reserva reserva1) 1)
    (= (capacitat_reserva reserva2) 2)
    (= (capacitat_reserva reserva3) 2)
    (= (capacitat_reserva reserva4) 2)
    (= (capacitat_reserva reserva5) 2)
    (= (capacitat_reserva reserva6) 2)
    (= (capacitat_reserva reserva7) 2)
    (= (capacitat_reserva reserva8) 2)
    (= (capacitat_reserva reserva9) 2)
    (= (capacitat_reserva reserva10) 1)
    (= (capacitat_reserva reserva11) 2)
    (= (capacitat_reserva reserva12) 1)
    (= (capacitat_reserva reserva13) 2)
    (= (capacitat_reserva reserva14) 2)
    (= (reserves_pendents) 0) 
    (= (reserves_correctes) 0) 
    (= (desperdici_places) 0)
  )
 (:goal (forall (?reserva - reserva) (processada ?reserva)))
 (:metric minimize (+ (* 1000 (reserves_pendents)) (* 1 (desperdici_places))))
)
