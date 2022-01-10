(define (problem basic) (:domain reserves)
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
    (reservada reserva0 dia25)
    (reservada reserva0 dia26)
    (reservada reserva0 dia27)
    (reservada reserva0 dia28)
    (reservada reserva0 dia29)
    (reservada reserva1 dia9)
    (reservada reserva1 dia10)
    (reservada reserva1 dia11)
    (reservada reserva1 dia12)
    (reservada reserva1 dia13)
    (reservada reserva1 dia14)
    (reservada reserva1 dia15)
    (reservada reserva2 dia25)
    (reservada reserva2 dia26)
    (reservada reserva3 dia6)
    (reservada reserva3 dia7)
    (reservada reserva3 dia8)
    (reservada reserva3 dia9)
    (reservada reserva3 dia10)
    (reservada reserva3 dia11)
    (reservada reserva3 dia12)
    (reservada reserva3 dia13)
    (reservada reserva3 dia14)
    (reservada reserva4 dia13)
    (reservada reserva4 dia14)
    (reservada reserva4 dia15)
    (reservada reserva4 dia16)
    (reservada reserva4 dia17)
    (reservada reserva4 dia18)
    (reservada reserva4 dia19)
    (reservada reserva4 dia20)
    (reservada reserva4 dia21)
    (reservada reserva4 dia22)
    (reservada reserva5 dia15)
    (reservada reserva5 dia16)
    (reservada reserva5 dia17)
    (reservada reserva5 dia18)
    (reservada reserva5 dia19)
    (reservada reserva5 dia20)
    (reservada reserva5 dia21)
    (reservada reserva6 dia12)
    (reservada reserva7 dia6)
    (reservada reserva7 dia7)
    (reservada reserva7 dia8)
    (reservada reserva7 dia9)
    (reservada reserva7 dia10)
    (reservada reserva7 dia11)
    (reservada reserva7 dia12)
    (reservada reserva7 dia13)
    (reservada reserva8 dia8)
    (reservada reserva8 dia9)
    (reservada reserva8 dia10)
    (reservada reserva8 dia11)
    (reservada reserva8 dia12)
    (reservada reserva8 dia13)
    (reservada reserva8 dia14)
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
    (reservada reserva10 dia1)
    (reservada reserva10 dia2)
    (reservada reserva10 dia3)
    (reservada reserva10 dia4)
    (reservada reserva10 dia5)
    (reservada reserva10 dia6)
    (reservada reserva10 dia7)
    (reservada reserva10 dia8)
    (reservada reserva10 dia9)
    (reservada reserva10 dia10)
    (reservada reserva11 dia21)
    (reservada reserva11 dia22)
    (reservada reserva11 dia23)
    (reservada reserva11 dia24)
    (reservada reserva11 dia25)
    (reservada reserva12 dia11)
    (reservada reserva12 dia12)
    (reservada reserva12 dia13)
    (reservada reserva12 dia14)
    (reservada reserva12 dia15)
    (reservada reserva12 dia16)
    (reservada reserva12 dia17)
    (reservada reserva12 dia18)
    (reservada reserva12 dia19)
    (reservada reserva13 dia18)
    (reservada reserva13 dia19)
    (reservada reserva13 dia20)
    (reservada reserva13 dia21)
    (reservada reserva13 dia22)
    (reservada reserva13 dia23)
    (reservada reserva13 dia24)
    (reservada reserva14 dia20)
    (reservada reserva14 dia21)
    (reservada reserva14 dia22)
    (= (capacitat_habitacio habitacio0) 2)
    (= (capacitat_habitacio habitacio1) 2)
    (= (capacitat_habitacio habitacio2) 4)
    (= (capacitat_habitacio habitacio3) 2)
    (= (capacitat_habitacio habitacio4) 3)
    (= (capacitat_habitacio habitacio5) 4)
    (= (capacitat_habitacio habitacio6) 4)
    (= (capacitat_habitacio habitacio7) 3)
    (= (capacitat_habitacio habitacio8) 2)
    (= (capacitat_habitacio habitacio9) 3)
    (= (capacitat_reserva reserva0) 1)
    (= (capacitat_reserva reserva1) 2)
    (= (capacitat_reserva reserva2) 1)
    (= (capacitat_reserva reserva3) 2)
    (= (capacitat_reserva reserva4) 2)
    (= (capacitat_reserva reserva5) 2)
    (= (capacitat_reserva reserva6) 2)
    (= (capacitat_reserva reserva7) 2)
    (= (capacitat_reserva reserva8) 2)
    (= (capacitat_reserva reserva9) 2)
    (= (capacitat_reserva reserva10) 2)
    (= (capacitat_reserva reserva11) 1)
    (= (capacitat_reserva reserva12) 1)
    (= (capacitat_reserva reserva13) 2)
    (= (capacitat_reserva reserva14) 2)
  )
 (:goal (forall (?reserva - reserva) (correcta ?reserva)))
)
