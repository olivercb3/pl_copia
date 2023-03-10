(define (domain reserves)
  (:requirements :strips :adl :typing :equality)
  (:types
    habitacio - item
    reserva - item
    dia - item
  )

  (:functions
    (capacitat_habitacio ?habitacio - habitacio)
    (capacitat_reserva ?reserva - reserva)
  )

  (:predicates
    (ocupada ?habitacio - habitacio ?dia - dia)
    (correcta ?reserva - reserva)
    (reservada ?reserva - reserva ?dia - dia)
  )

  (:action reservar
    :parameters (?habitacio - habitacio ?reserva - reserva)
    :precondition
      (and (not (correcta ?reserva))
            ;comprovar capacitat habitacio
            (>= (capacitat_habitacio ?habitacio) (capacitat_reserva ?reserva))
            (forall (?dia - dia)
                (or
                  (not (ocupada ?habitacio ?dia))
                  (not (reservada ?reserva ?dia))
                )
            )
      )
    :effect
      (and
          (forall (?dia - dia)
            (when (reservada ?reserva ?dia) (ocupada ?habitacio ?dia))
          )
          (correcta ?reserva)
      )
  )
)
