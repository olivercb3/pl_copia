(define (domain reserves)
  (:requirements :strips :adl :typing :equality :action-costs)
  (:types
    habitacio - item
    reserva - item
    dia - item
  )

  (:functions
    (capacitat_habitacio ?habitacio - habitacio)
    (capacitat_reserva ?reserva - reserva)
    (desperdici_places)
    (habitacions_diferents)
  )

  (:predicates
    (lliure ?habitacio - habitacio ?dia - dia)
    (correcta ?reserva - reserva)
    (reservada ?reserva - reserva ?dia - dia)
    (utilitzada ?habitacio - habitacio)
  )

  (:action reservar
    :parameters (?habitacio - habitacio ?reserva - reserva)
    :precondition
      (and (not (correcta ?reserva))
            ;comprovar capacitat habitacio
            (>= (capacitat_habitacio ?habitacio) (capacitat_reserva ?reserva))
            (forall (?dia - dia)
                (or
                  (lliure ?habitacio ?dia)
                  (not (reservada ?reserva ?dia))
                )
            )
      )
    :effect
      (and
          (forall (?dia - dia)
            (when (reservada ?reserva ?dia)
              (and
                (not (lliure ?habitacio ?dia))
                (increase (desperdici_places) (- (capacitat_habitacio ?habitacio) (capacitat_reserva ?reserva)))
              )
            )
          )
          (correcta ?reserva)
          (when (not (utilitzada ?habitacio))
            (and
              (increase (habitacions_diferents) 1)
              (utilitzada ?habitacio)
            )
          )
      )
  )
)
