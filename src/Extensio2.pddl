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
    (reserves_correctes)
    (orientacio_habitacio ?habitacio - habitacio)
    (orientacio_reserva ?reserva - reserva)
    (reserves_mal_orientades)
  )

  (:predicates
    (lliure ?habitacio - habitacio ?dia - dia)
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
                  (lliure ?habitacio ?dia)
                  (not (reservada ?reserva ?dia))
                )
            )
      )
    :effect
      (and
          (forall (?dia - dia)
            (when (reservada ?reserva ?dia) (not (lliure ?habitacio ?dia)))
          )
          (correcta ?reserva)
          (increase (reserves_correctes) 1)
          (when (not (= (orientacio_habitacio ?habitacio) (orientacio_reserva ?reserva)))
            (increase (reserves_mal_orientades) 1))
      )
  )
)
