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
    (reservada reserva0 dia0)
    (reservada reserva0 dia1)
    (reservada reserva0 dia2)
    (reservada reserva0 dia3)
    (reservada reserva0 dia4)
    (reservada reserva0 dia5)
    (reservada reserva0 dia6)
    (reservada reserva0 dia7)
    (reservada reserva1 dia14)
    (reservada reserva1 dia15)
    (reservada reserva1 dia16)
    (reservada reserva1 dia17)
    (reservada reserva1 dia18)
    (reservada reserva2 dia8)
    (reservada reserva3 dia20)
    (reservada reserva3 dia21)
    (reservada reserva3 dia22)
    (reservada reserva3 dia23)
    (reservada reserva3 dia24)
    (reservada reserva3 dia25)
    (reservada reserva3 dia26)
    (reservada reserva4 dia21)
    (reservada reserva4 dia22)
    (reservada reserva4 dia23)
    (reservada reserva4 dia24)
    (reservada reserva4 dia25)
    (reservada reserva4 dia26)
    (reservada reserva5 dia25)
    (reservada reserva5 dia26)
    (reservada reserva5 dia27)
    (reservada reserva5 dia28)
    (reservada reserva5 dia29)
    (reservada reserva6 dia29)
    (reservada reserva7 dia27)
    (reservada reserva7 dia28)
    (reservada reserva7 dia29)
    (reservada reserva8 dia24)
    (reservada reserva8 dia25)
    (reservada reserva8 dia26)
    (reservada reserva9 dia4)
    (reservada reserva9 dia5)
    (reservada reserva9 dia6)
    (reservada reserva9 dia7)
    (reservada reserva10 dia24)
    (reservada reserva10 dia25)
    (reservada reserva10 dia26)
    (reservada reserva10 dia27)
    (reservada reserva10 dia28)
    (reservada reserva10 dia29)
    (reservada reserva11 dia14)
    (reservada reserva11 dia15)
    (reservada reserva11 dia16)
    (reservada reserva11 dia17)
    (reservada reserva11 dia18)
    (reservada reserva11 dia19)
    (reservada reserva12 dia26)
    (reservada reserva12 dia27)
    (reservada reserva12 dia28)
    (reservada reserva12 dia29)
    (reservada reserva13 dia0)
    (reservada reserva13 dia1)
    (reservada reserva13 dia2)
    (reservada reserva13 dia3)
    (reservada reserva13 dia4)
    (reservada reserva13 dia5)
    (= (capacitat_habitacio habitacio0) 3)
    (= (capacitat_habitacio habitacio1) 2)
    (= (capacitat_habitacio habitacio2) 4)
    (= (capacitat_reserva reserva0) 2)
    (= (capacitat_reserva reserva1) 1)
    (= (capacitat_reserva reserva2) 1)
    (= (capacitat_reserva reserva3) 1)
    (= (capacitat_reserva reserva4) 2)
    (= (capacitat_reserva reserva5) 1)
    (= (capacitat_reserva reserva6) 2)
    (= (capacitat_reserva reserva7) 1)
    (= (capacitat_reserva reserva8) 2)
    (= (capacitat_reserva reserva9) 1)
    (= (capacitat_reserva reserva10) 1)
    (= (capacitat_reserva reserva11) 1)
    (= (capacitat_reserva reserva12) 2)
    (= (capacitat_reserva reserva13) 1)
    (= (reserves_pendents) 0) 
    (= (reserves_correctes) 0) 
    (= (desperdici_places) 0)
    (= (habitacions_diferents) 0) 
  )
 (:goal (forall (?reserva - reserva) (processada ?reserva)))
 (:metric minimize (+ (* 1000 (reserves_pendents)) (+ (* 90 (habitacions_diferents)) (desperdici_places))))
)
