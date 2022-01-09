(define (problem ext4) (:domain reserves)
  (:objects
    habitacio0 - habitacio
    habitacio1 - habitacio
    reserva0 - reserva
    reserva1 - reserva
    dia1 - dia
    dia2 - dia
    dia3 - dia
    dia4 - dia
    dia5 - dia
    dia6 - dia
    dia7 - dia
    dia8 - dia
    dia9 - dia

  )
  (:init
    (lliure habitacio0 dia1)
    (lliure habitacio0 dia2)
    (lliure habitacio1 dia1)
    (lliure habitacio1 dia2)
    (reservada reserva0 dia1)
    (reservada reserva0 dia2)
    (= (capacitat_habitacio habitacio0) 3)
    (= (capacitat_habitacio habitacio1) 2)
    (= (capacitat_reserva reserva0) 3)
    (= (capacitat_reserva reserva1) 2)
    (= (desperdici_places) 0)
    (= (habitacions_diferents) 0)
  )

  (:goal (and (forall (?reserva - reserva) (correcta ?reserva))))
  (:metric minimize (+ (desperdici_places) (* (habitacions_diferents) 100)))
)
