(define (problem ext4) (:domain reserves)
  (:objects
    habitacio0 - habitacio
    habitacio1 - habitacio
    habitacio2 - habitacio
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
    (reservada reserva0 dia10)
    (reservada reserva0 dia11)
    (reservada reserva1 dia2)
    (reservada reserva1 dia3)
    (reservada reserva1 dia4)
    (reservada reserva1 dia5)
    (reservada reserva1 dia6)
    (reservada reserva1 dia7)
    (reservada reserva1 dia8)
    (reservada reserva1 dia9)
    (reservada reserva2 dia29)
    (reservada reserva3 dia22)
    (reservada reserva3 dia23)
    (reservada reserva3 dia24)
    (reservada reserva3 dia25)
    (reservada reserva3 dia26)
    (reservada reserva3 dia27)
    (reservada reserva3 dia28)
    (reservada reserva3 dia29)
    (reservada reserva4 dia25)
    (reservada reserva4 dia26)
    (reservada reserva5 dia3)
    (reservada reserva5 dia4)
    (reservada reserva5 dia5)
    (reservada reserva5 dia6)
    (reservada reserva5 dia7)
    (reservada reserva5 dia8)
    (reservada reserva5 dia9)
    (reservada reserva5 dia10)
    (reservada reserva6 dia12)
    (reservada reserva6 dia13)
    (reservada reserva6 dia14)
    (reservada reserva6 dia15)
    (reservada reserva6 dia16)
    (reservada reserva6 dia17)
    (reservada reserva6 dia18)
    (reservada reserva6 dia19)
    (reservada reserva6 dia20)
    (reservada reserva6 dia21)
    (reservada reserva7 dia25)
    (reservada reserva7 dia26)
    (reservada reserva7 dia27)
    (reservada reserva7 dia28)
    (reservada reserva7 dia29)
    (reservada reserva8 dia26)
    (reservada reserva8 dia27)
    (reservada reserva8 dia28)
    (reservada reserva8 dia29)
    (reservada reserva9 dia1)
    (reservada reserva9 dia2)
    (reservada reserva9 dia3)
    (reservada reserva9 dia4)
    (reservada reserva9 dia5)
    (reservada reserva9 dia6)
    (reservada reserva9 dia7)
    (reservada reserva9 dia8)
    (reservada reserva9 dia9)
    (reservada reserva9 dia10)
    (reservada reserva10 dia9)
    (reservada reserva10 dia10)
    (reservada reserva10 dia11)
    (reservada reserva10 dia12)
    (reservada reserva10 dia13)
    (reservada reserva10 dia14)
    (reservada reserva10 dia15)
    (reservada reserva10 dia16)
    (reservada reserva11 dia3)
    (reservada reserva11 dia4)
    (reservada reserva11 dia5)
    (reservada reserva11 dia6)
    (reservada reserva11 dia7)
    (reservada reserva11 dia8)
    (reservada reserva12 dia17)
    (reservada reserva13 dia9)
    (reservada reserva13 dia10)
    (= (capacitat_habitacio habitacio0) 3)
    (= (capacitat_habitacio habitacio1) 3)
    (= (capacitat_habitacio habitacio2) 4)
    (= (capacitat_reserva reserva0) 2)
    (= (capacitat_reserva reserva1) 1)
    (= (capacitat_reserva reserva2) 2)
    (= (capacitat_reserva reserva3) 2)
    (= (capacitat_reserva reserva4) 2)
    (= (capacitat_reserva reserva5) 1)
    (= (capacitat_reserva reserva6) 1)
    (= (capacitat_reserva reserva7) 2)
    (= (capacitat_reserva reserva8) 2)
    (= (capacitat_reserva reserva9) 2)
    (= (capacitat_reserva reserva10) 2)
    (= (capacitat_reserva reserva11) 1)
    (= (capacitat_reserva reserva12) 1)
    (= (capacitat_reserva reserva13) 1)
    (= (reserves_pendents) 0) 
    (= (reserves_correctes) 0) 
    (= (desperdici_places) 0)
    (= (habitacions_diferents) 0) 
  )
 (:goal (forall (?reserva - reserva) (processada ?reserva)))
 (:metric minimize (+ (* 1000 (reserves_pendents)) (+ (* 90 (habitacions_diferents)) (desperdici_places))))
)
