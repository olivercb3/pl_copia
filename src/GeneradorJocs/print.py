def printGoal():
    print("(:goal (forall (?reserva - reserva) (correcta ?reserva)))")
    return

def printStart():
    print("(define (problem basic) (:domain reserves)")
    return

def printStartObjects():
    print("  (:objects")
    return

def printHab(num):
    "    habitacio"+str(num)+" - habitacio"
    return

def printReserva(num):
    "    reserva"+str(num)+" - reserva"
    return

def printDia(num):
    "    dia"+str(num)+" - dia"
    return
    
def printStartinit():
    print("  (:init")
    return

def printTabbedEndParagraph():
    print("  )")
    return

def printEnd():
    print(")")
    return

def printSeparation():
    print("")
    return

def printLliure(hab, dia):
    print("(lliure habitacio" + str(hab) + " dia" +  str(dia) + ")")
    return

def printReservada(res, dia):
    print("(reservada reserva" + str(res) + " dia" +  str(dia) + ")")
    return

def printCapacitatHabitacio(hab, num):
    print("(= (capacitat_habitacio habitacio" + str(hab) + ") " +  str(num) + ")")
    return

def printCapacitatReserva(res, num):
    print("(= (capacitat_reserva reserva" + str(res) + ") " +  str(num) + ")")
    return
