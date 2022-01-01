#!/usr/bin/env python3

"""
Python Script para generar juegos de prueva automaticos
para la practica de planificacion de IA
"""

import os
import sys
import argparse

#"Imports"

import "print.py" as print
import "input.py" as input
import "random.py" as myRandom


def main(arguments):
    args = input.inputHandler(arguments)
    rng = myRandom.rng()
    setUp(rng)
    numHab = rng.getRandomNumber(3,15)
    numRes = rng.getRandomNumber(1,20)
    numDies = 30
    printStart()
    printObjects(numHab,numRes,numDies)
    printInit(numHab,numRes,numDies,rng)
    printGoal()
    printEnd(numHab,numRes,numDies)

def setUp(rng):
    return

def printStart():
    print.printStart()
    return

def printGoal():
    print.printGoal()
    return

def printEnd():
    print.printEnd()
    return

def printObjects(numHab,numRes,numDies):
    print.printStartObjects()
    for i in range(numHab):
        print.printHab(i)

    for i in range(numRes):
        print.printReserva(i)

    for i in range(numDies):
        print.printDia(i)

    print.printTabbedEndParagraph()
    return

def printInit(numHab,numRes,numDies, rng):
    print.printStartinit()
    #lliueres
    for h in range(numHab):
        for d in range(numDies):
            print.printLliure(h,d)

    #reservada
    for r in range(numRes):
        diaInicial = rng.getRandomNumber(0,numDies-1)
        diaFinal = min(numDies, diaInicial + rng.getnumDiesReserva())
        for d in range(diaInicial,diaFinal,1):
            print.printReservada(r, rng.getCapacitatReserva())

    #capacitat
    for h in range(numHab):
        print.printCapacitatHabitacio(h, rng.getCapacitatHab())

    for r in range(numRes):
        print.printCapacitatReserva(r, rng.getCapacitatReserva())

    print.printTabbedEndParagraph()
    return


if __name__ == '__main__':
    sys.exit(main(sys.argv[1:]))
