
import sys
import randomgenerator as myRandom
import random
original_stdout = sys.stdout

def printStart(file = original_stdout):
    printStart(file)
    return

def printGoal(file = original_stdout):
    printGoal(file)
    return

def printEnd(file = original_stdout):
    printEnd(file)
    return

def printObjects(numHab,numRes,numDies,file = original_stdout):
    printStartObjects(file)
    for i in range(numHab):
        printHab(i,file)

    for i in range(numRes):
        printReserva(i,file)

    for i in range(numDies):
        printDia(i,file)

    printTabbedEndParagraph(file)
    return

def printInit(numHab,numRes,numDies, rng,file = original_stdout):
    printStartinit(file)
    #lliueres
    #for h in range(numHab):
    #    for d in range(numDies):
    #        printLliure(h,d,file)

    #reservada
    for r in range(numRes):
        diaInicial = rng.getRandomNumber(0,numDies-1)
        diaFinal = min(numDies, diaInicial + rng.getnumDiesReserva())
        for d in range(diaInicial,diaFinal,1):
            printReservada(r, d,file)

    #capacitat
    for h in range(numHab):
        printCapacitatHabitacio(h, rng.getCapacitatHab(),file)

    for r in range(numRes):
        printCapacitatReserva(r, rng.getCapacitatReserva(),file)


    printCounters(file)
    printTabbedEndParagraph(file)
    return

def printCounters(file = original_stdout):
    printCorrecteiPendents(file)
    return

def printGoal(file = original_stdout):
    print(" (:goal (forall (?reserva - reserva) (processada ?reserva)))", file = file)
    print(" (:metric maximize (+ (reserves_correctes) 0))", file = file)
    return

def printStart(file = original_stdout):
    print("(define (problem ext1) (:domain reserves)", file = file)
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

def printCorrecteiPendents(file):
    print("    (= (reserves_pendents) 0) ", file = file)
    print("    (= (reserves_correctes) 0) ", file = file)
    return
