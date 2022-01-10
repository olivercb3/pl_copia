(define (problem ext1) (:domain reserves)
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
    (reservada reserva0 dia29)
    (reservada reserva1 dia20)
    (reservada reserva1 dia21)
    (reservada reserva1 dia22)
    (reservada reserva1 dia23)
    (reservada reserva1 dia24)
    (reservada reserva2 dia9)
    (reservada reserva2 dia10)
    (reservada reserva2 dia11)
    (reservada reserva2 dia12)
    (reservada reserva2 dia13)
    (reservada reserva3 dia13)
    (reservada reserva3 dia14)
    (reservada reserva3 dia15)
    (reservada reserva3 dia16)
    (reservada reserva4 dia0)
    (reservada reserva4 dia1)
    (reservada reserva4 dia2)
    (reservada reserva4 dia3)
    (reservada reserva4 dia4)
    (reservada reserva4 dia5)
    (reservada reserva4 dia6)
    (reservada reserva4 dia7)
    (reservada reserva5 dia13)
    (reservada reserva5 dia14)
    (reservada reserva5 dia15)
    (reservada reserva5 dia16)
    (reservada reserva6 dia10)
    (reservada reserva6 dia11)
    (reservada reserva6 dia12)
    (reservada reserva6 dia13)
    (reservada reserva6 dia14)
    (reservada reserva6 dia15)
    (reservada reserva6 dia16)
    (reservada reserva6 dia17)
    (reservada reserva7 dia8)
    (reservada reserva7 dia9)
    (reservada reserva7 dia10)
    (reservada reserva7 dia11)
    (reservada reserva7 dia12)
    (reservada reserva7 dia13)
    (reservada reserva7 dia14)
    (reservada reserva7 dia15)
    (reservada reserva8 dia10)
    (reservada reserva8 dia11)
    (reservada reserva8 dia12)
    (reservada reserva9 dia29)
    (reservada reserva10 dia10)
    (reservada reserva10 dia11)
    (reservada reserva10 dia12)
    (reservada reserva11 dia21)
    (reservada reserva11 dia22)
    (reservada reserva11 dia23)
    (reservada reserva11 dia24)
    (reservada reserva12 dia1)
    (reservada reserva12 dia2)
    (reservada reserva12 dia3)
    (reservada reserva13 dia4)
    (reservada reserva13 dia5)
    (reservada reserva13 dia6)
    (reservada reserva13 dia7)
    (reservada reserva13 dia8)
    (reservada reserva13 dia9)
    (reservada reserva13 dia10)
    (reservada reserva13 dia11)
    (reservada reserva14 dia14)
    (reservada reserva14 dia15)
    (reservada reserva14 dia16)
    (reservada reserva14 dia17)
    (reservada reserva14 dia18)
    (reservada reserva14 dia19)
    (reservada reserva14 dia20)
    (reservada reserva14 dia21)
    (= (capacitat_habitacio habitacio0) 4)
    (= (capacitat_habitacio habitacio1) 3)
    (= (capacitat_habitacio habitacio2) 2)
    (= (capacitat_habitacio habitacio3) 3)
    (= (capacitat_habitacio habitacio4) 2)
    (= (capacitat_habitacio habitacio5) 3)
    (= (capacitat_habitacio habitacio6) 2)
    (= (capacitat_habitacio habitacio7) 2)
    (= (capacitat_habitacio habitacio8) 2)
    (= (capacitat_habitacio habitacio9) 3)
    (= (capacitat_reserva reserva0) 1)
    (= (capacitat_reserva reserva1) 1)
    (= (capacitat_reserva reserva2) 2)
    (= (capacitat_reserva reserva3) 2)
    (= (capacitat_reserva reserva4) 1)
    (= (capacitat_reserva reserva5) 1)
    (= (capacitat_reserva reserva6) 1)
    (= (capacitat_reserva reserva7) 1)
    (= (capacitat_reserva reserva8) 1)
    (= (capacitat_reserva reserva9) 1)
    (= (capacitat_reserva reserva10) 1)
    (= (capacitat_reserva reserva11) 1)
    (= (capacitat_reserva reserva12) 2)
    (= (capacitat_reserva reserva13) 2)
    (= (capacitat_reserva reserva14) 1)
    (= (reserves_pendents) 0) 
    (= (reserves_correctes) 0) 
  )
 (:goal (forall (?reserva - reserva) (processada ?reserva)))
 (:metric maximize (+ (reserves_correctes) 0))
)
