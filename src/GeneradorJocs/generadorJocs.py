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

def main(arguments):
    args = input.inputHandler(arguments)
    abort = False
    if args['habitacions'] < 1:
        print("habitacions han de ser mes gran que 0")
        abort = True

    if args['reserves'] < 1:
        print("reserves han de ser 0 o més")
        abort = True

    if args['dies'] < 1:
        print("han de ser mes gran que 0")
        abort = True

    if args['extensio'] < 0 or args['extensio'] > 5:
        print("extensio ha de ser entre 0 i 4")
        abort = True

    if abort:
        sys.exit(main(sys.argv[1:]))

    printJocProva(
        extensio = args['extensio'],
        numHab = args['habitacions'],
        numRes = args['reserves'],
        numDies = args['dies'],
        outputfile = args['outfile']
    )
    return

def printNivellBasic( rng, numHab, numRes , numDies, outFile):
    printStart(file=outFile)
    printObjects(numHab,numRes,numDies,file=outFile)
    printInit(numHab,numRes,numDies,rng,file=outFile)
    printGoal(file=outFile)
    printEnd(file=outFile)
    return

def printExtension1( rng, numHab, numRes , numDies, outFile):
    printStart(file=outFile)
    printObjects(numHab,numRes,numDies,file=outFile)
    printInit(numHab,numRes,numDies,rng,file=outFile)
    printGoal(file=outFile)
    printEnd(file=outFile)
    return

def printExtension2( rng, numHab, numRes , numDies, outFile):
    printStart(file=outFile)
    printObjects(numHab,numRes,numDies,file=outFile)
    printInit(numHab,numRes,numDies,rng,file=outFile)
    printGoal(file=outFile)
    printEnd(file=outFile)
    return

def printExtension3( rng, numHab, numRes , numDies, outFile):
    printStart(file=outFile)
    printObjects(numHab,numRes,numDies,file=outFile)
    printInit(numHab,numRes,numDies,rng,file=outFile)
    printGoal(file=outFile)
    printEnd(file=outFile)
    return

def printExtension4( rng, numHab, numRes , numDies, outFile):
    printStart(file=outFile)
    printObjects(numHab,numRes,numDies,file=outFile)
    printInit(numHab,numRes,numDies,rng,file=outFile)
    printGoal(file=outFile)
    printEnd(file=outFile)
    return


def printJocProva(
        extensio = 0,
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
        outputfile = "output"+str(printedJocs)+".pddl"

    outFile = open(outputfile, 'w')

    if extensio == 0:
        printNivellBasic(
            rng = rng,
            numHab = numHab,
            numRes = numRes,
            numDies = numDies,
            outFile = outFile
        )
    elif extensio == 1:
        printExtension1(
            rng = rng,
            numHab = numHab,
            numRes = numRes,
            numDies = numDies,
            outFile = outFile
        )
    elif extensio == 2:
        printExtension2(
            rng = rng,
            numHab = numHab,
            numRes = numRes,
            numDies = numDies,
            outFile = outFile
        )
    elif extensio == 3:
        printExtension3(
            rng = rng,
            numHab = numHab,
            numRes = numRes,
            numDies = numDies,
            outFile = outFile
        )
    elif extensio == 4:
        printExtension4(
            rng = rng,
            numHab = numHab,
            numRes = numRes,
            numDies = numDies,
            outFile = outFile
        )

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
