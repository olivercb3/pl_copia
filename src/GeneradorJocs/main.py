#!/usr/bin/env python3

"""
Python Script para generar juegos de prueva automaticos
para la practica de planificacion de IA
"""

import os
import sys
import argparse

#"Imports"

import MyPrint as output
import MyInput as input
import randomgenerator as myRandom
import random

def main(arguments):
    args = input.inputHandler(arguments)
    rng = myRandom.RNG()
    setUp(rng)
    numHab = rng.getRandomNumber(3,5)
    numRes = rng.getRandomNumber(1,4)
    numDies = 30
    printStart()
    printObjects(numHab,numRes,numDies)
    printInit(numHab,numRes,numDies,rng)
    printGoal()
    printEnd()

def setUp(rng):
    return

def printStart():
    output.printStart()
    return

def printGoal():
    output.printGoal()
    return

def printEnd():
    output.printEnd()
    return

def printObjects(numHab,numRes,numDies):
    output.printStartObjects()
    for i in range(numHab):
        output.printHab(i)

    for i in range(numRes):
        output.printReserva(i)

    for i in range(numDies):
        output.printDia(i)

    output.printTabbedEndParagraph()
    return

def printInit(numHab,numRes,numDies, rng):
    output.printStartinit()
    #lliueres
    for h in range(numHab):
        for d in range(numDies):
            output.printLliure(h,d)

    #reservada
    for r in range(numRes):
        diaInicial = rng.getRandomNumber(0,numDies-1)
        diaFinal = min(numDies, diaInicial + rng.getnumDiesReserva())
        for d in range(diaInicial,diaFinal,1):
            output.printReservada(r, d)

    #capacitat
    for h in range(numHab):
        output.printCapacitatHabitacio(h, rng.getCapacitatHab())

    for r in range(numRes):
        output.printCapacitatReserva(r, rng.getCapacitatReserva())

    output.printTabbedEndParagraph()
    return


if __name__ == '__main__':
    sys.exit(main(sys.argv[1:]))
