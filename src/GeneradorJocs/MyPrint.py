
import sys
original_stdout = sys.stdout

def printGoal(file = original_stdout):
    print("(:goal (forall (?reserva - reserva) (correcta ?reserva)))", file = file)
    return

def printStart(file = original_stdout):
    print("(define (problem basic) (:domain reserves)", file = file)
    return

def printStartObjects(file = original_stdout):
    print("  (:objects", file = file)
    return

def printHab(num,file = original_stdout):
    print("    habitacio"+str(num)+" - habitacio", file = file)
    return

def printReserva(num,file = original_stdout):
    print("    reserva"+str(num)+" - reserva", file = file)
    return

def printDia(num,file = original_stdout):
    print("    dia"+str(num)+" - dia", file = file)
    return

def printStartinit(file = original_stdout):
    print("  (:init", file = file)
    return

def printTabbedEndParagraph(file = original_stdout):
    print("  )", file = file)
    return

def printEnd(file = original_stdout):
    print(")", file = file)
    return

def printSeparation(file = original_stdout):
    print("", file = file)
    return

def printLliure(hab, dia,file = original_stdout):
    print("    (lliure habitacio" + str(hab) + " dia" +  str(dia) + ")", file = file)
    return

def printReservada(res, dia,file = original_stdout):
    print("    (reservada reserva" + str(res) + " dia" +  str(dia) + ")", file = file)
    return

def printCapacitatHabitacio(hab, num,file = original_stdout):
    print("    (= (capacitat_habitacio habitacio" + str(hab) + ") " +  str(num) + ")", file = file)
    return

def printCapacitatReserva(res, num, file = original_stdout):
    print("    (= (capacitat_reserva reserva" + str(res) + ") " +  str(num) + ")", file = file)
    return
