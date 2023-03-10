(define (domain reserves)
  (:requirements :strips :adl :typing :equality :action-costs :fluents)
  (:types
    habitacio - item
    reserva - item
    dia - item
  )

  (:functions
    (capacitat_habitacio ?habitacio - habitacio)
    (capacitat_reserva ?reserva - reserva)
    (reserves_correctes)
    (reserves_pendents)
    (orientacio_habitacio ?habitacio - habitacio)
    (orientacio_reserva ?reserva - reserva)
    (reserves_mal_orientades)
  )

  (:predicates
    (ocupada ?habitacio - habitacio ?dia - dia)
    (correcta ?reserva - reserva)
    (processada ?reserva - reserva)
    (reservada ?reserva - reserva ?dia - dia)
  )

  (:action marcar_no_reservada
    :parameters (?reserva - reserva)
    :precondition
      (not (processada ?reserva))
    :effect
      (and (increase (reserves_pendents) 1) (processada ?reserva))
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
          (processada ?reserva)
          (correcta ?reserva)
          (increase (reserves_correctes) 1)
          (when (not (= (orientacio_habitacio ?habitacio) (orientacio_reserva ?reserva)))
            (increase (reserves_mal_orientades) 1))
      )
  )
)
