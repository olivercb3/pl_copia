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
    (reservada reserva0 dia4)
    (reservada reserva1 dia23)
    (reservada reserva1 dia24)
    (reservada reserva1 dia25)
    (reservada reserva1 dia26)
    (reservada reserva2 dia28)
    (reservada reserva2 dia29)
    (reservada reserva3 dia22)
    (reservada reserva3 dia23)
    (reservada reserva3 dia24)
    (reservada reserva3 dia25)
    (reservada reserva3 dia26)
    (reservada reserva4 dia17)
    (reservada reserva4 dia18)
    (reservada reserva5 dia6)
    (reservada reserva5 dia7)
    (reservada reserva6 dia9)
    (reservada reserva6 dia10)
    (reservada reserva7 dia28)
    (reservada reserva7 dia29)
    (reservada reserva8 dia24)
    (reservada reserva8 dia25)
    (reservada reserva8 dia26)
    (reservada reserva8 dia27)
    (reservada reserva8 dia28)
    (reservada reserva8 dia29)
    (reservada reserva9 dia12)
    (reservada reserva9 dia13)
    (reservada reserva9 dia14)
    (reservada reserva9 dia15)
    (reservada reserva9 dia16)
    (reservada reserva10 dia14)
    (reservada reserva10 dia15)
    (reservada reserva10 dia16)
    (reservada reserva10 dia17)
    (reservada reserva10 dia18)
    (reservada reserva10 dia19)
    (reservada reserva10 dia20)
    (reservada reserva11 dia7)
    (reservada reserva12 dia21)
    (reservada reserva12 dia22)
    (reservada reserva12 dia23)
    (reservada reserva12 dia24)
    (reservada reserva13 dia28)
    (reservada reserva13 dia29)
    (reservada reserva14 dia16)
    (reservada reserva14 dia17)
    (reservada reserva14 dia18)
    (reservada reserva14 dia19)
    (reservada reserva14 dia20)
    (reservada reserva14 dia21)
    (reservada reserva14 dia22)
    (reservada reserva14 dia23)
    (= (capacitat_habitacio habitacio0) 3)
    (= (capacitat_habitacio habitacio1) 1)
    (= (capacitat_habitacio habitacio2) 2)
    (= (capacitat_habitacio habitacio3) 3)
    (= (capacitat_habitacio habitacio4) 3)
    (= (capacitat_habitacio habitacio5) 3)
    (= (capacitat_habitacio habitacio6) 2)
    (= (capacitat_habitacio habitacio7) 2)
    (= (capacitat_habitacio habitacio8) 3)
    (= (capacitat_habitacio habitacio9) 2)
    (= (capacitat_reserva reserva0) 1)
    (= (capacitat_reserva reserva1) 2)
    (= (capacitat_reserva reserva2) 2)
    (= (capacitat_reserva reserva3) 2)
    (= (capacitat_reserva reserva4) 2)
    (= (capacitat_reserva reserva5) 2)
    (= (capacitat_reserva reserva6) 2)
    (= (capacitat_reserva reserva7) 1)
    (= (capacitat_reserva reserva8) 1)
    (= (capacitat_reserva reserva9) 2)
    (= (capacitat_reserva reserva10) 1)
    (= (capacitat_reserva reserva11) 2)
    (= (capacitat_reserva reserva12) 2)
    (= (capacitat_reserva reserva13) 2)
    (= (capacitat_reserva reserva14) 1)
  )
 (:goal (forall (?reserva - reserva) (correcta ?reserva)))
)
