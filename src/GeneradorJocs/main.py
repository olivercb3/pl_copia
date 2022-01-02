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

original_stdout = sys.stdout
printedJocs = 0

def main(arguments):
    args = input.inputHandler(arguments)
    printedJocs = 3
    printJocProva(
        numHab = 8,
        numRes = 3,
        numDies = 10,
        outputfile = "jocprova5.pddl"
    )

def printJocProva(
        seed = None,
        numHab = None,
        numRes = None,
        numDies = 5,
        outputfile = None
    ):
    rng = myRandom.RNG()
    if seed is not None:
        rng.changeSeed(seed)
    if numHab is None:
        numHab = rng.getRandomNumber(1,3)
    if numRes is None:
        numRes = rng.getRandomNumber(1,3)
    if outputfile is None:
        #searchForFileName
        outputfile = "output"+str(printedJocs)+".pddl"

    outFile = open(outputfile, 'w')

    printStart(file=outFile)
    printObjects(numHab,numRes,numDies,file=outFile)
    printInit(numHab,numRes,numDies,rng,file=outFile)
    printGoal(file=outFile)
    printEnd(file=outFile)
    outFile.close()


def setUp(rng):
    return

def printStart(file = original_stdout):
    output.printStart(file)
    return

def printGoal(file = original_stdout):
    output.printGoal(file)
    return

def printEnd(file = original_stdout):
    output.printEnd(file)
    return

def printObjects(numHab,numRes,numDies,file = original_stdout):
    output.printStartObjects(file)
    for i in range(numHab):
        output.printHab(i,file)

    for i in range(numRes):
        output.printReserva(i,file)

    for i in range(numDies):
        output.printDia(i,file)

    output.printTabbedEndParagraph(file)
    return

def printInit(numHab,numRes,numDies, rng,file = original_stdout):
    output.printStartinit(file)
    #lliueres
    for h in range(numHab):
        for d in range(numDies):
            output.printLliure(h,d,file)

    #reservada
    for r in range(numRes):
        diaInicial = rng.getRandomNumber(0,numDies-1)
        diaFinal = min(numDies, diaInicial + rng.getnumDiesReserva())
        for d in range(diaInicial,diaFinal,1):
            output.printReservada(r, d,file)

    #capacitat
    for h in range(numHab):
        output.printCapacitatHabitacio(h, rng.getCapacitatHab(),file)

    for r in range(numRes):
        output.printCapacitatReserva(r, rng.getCapacitatReserva(),file)

    output.printTabbedEndParagraph(file)
    return


if __name__ == '__main__':
    sys.exit(main(sys.argv[1:]))
