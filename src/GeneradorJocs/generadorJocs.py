#!/usr/bin/env python3

"""
Python Script para generar juegos de prueva automaticos
para la practica de planificacion de IA
"""

import os
import sys
import argparse

#"Imports"

import MyInput as input

import MyPrint0 as output0
import MyPrint1 as output1
import MyPrint2 as output2
import MyPrint3 as output3
import MyPrint3 as output4
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
    output0.printStart(file=outFile)
    output0.printObjects(numHab,numRes,numDies,file=outFile)
    output0.printInit(numHab,numRes,numDies,rng,file=outFile)
    output0.printGoal(file=outFile)
    output0.printEnd(file=outFile)
    return

def printExtension1( rng, numHab, numRes , numDies, outFile):
    output1.printStart(file=outFile)
    output1.printObjects(numHab,numRes,numDies,file=outFile)
    output1.printInit(numHab,numRes,numDies,rng,file=outFile)
    output1.printGoal(file=outFile)
    output1.printEnd(file=outFile)
    return

def printExtension2( rng, numHab, numRes , numDies, outFile):
    output2.printStart(file=outFile)
    output2.printObjects(numHab,numRes,numDies,file=outFile)
    output2.printInit(numHab,numRes,numDies,rng,file=outFile)
    output2.printGoal(file=outFile)
    output2.printEnd(file=outFile)
    return

def printExtension3( rng, numHab, numRes , numDies, outFile):
    output3.printStart(file=outFile)
    output3.printObjects(numHab,numRes,numDies,file=outFile)
    output3.printInit(numHab,numRes,numDies,rng,file=outFile)
    output3.printGoal(file=outFile)
    output3.printEnd(file=outFile)
    return

def printExtension4( rng, numHab, numRes , numDies, outFile):
    output4.printStart(file=outFile)
    output4.printObjects(numHab,numRes,numDies,file=outFile)
    output4.printInit(numHab,numRes,numDies,rng,file=outFile)
    output4.printGoal(file=outFile)
    output4.printEnd(file=outFile)
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
        outputfile = "output-extensio"+str(extensio)+".pddl"

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




if __name__ == '__main__':
    sys.exit(main(sys.argv[1:]))
