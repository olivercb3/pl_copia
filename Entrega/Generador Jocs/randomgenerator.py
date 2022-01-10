# -*- coding: utf-8 -*-)
from __future__ import unicode_literals
#!/usr/bin/python

import random

class RNG:
    """Class to handle randomness"""


    minCapHab = 1
    maxCapHab = 4
    minCapRes = 1
    maxCapRes = 2

    minDiesReserva = 1
    maxDiesReserva = 10
    seed = 0

    def __init__(self):
        random.seed()

    def changeSeed(self,mySeed):
        self.seed = mySeed
        random = random.seed(mySeed)

    def setUp(args):
        return

    def getCapacitatHab(self):
        return random.randint(self.minCapHab,self.maxCapHab)

    def getCapacitatReserva(self):
        return random.randint(self.minCapRes,self.maxCapRes)

    def getnumDiesReserva(self):
        return random.randint(self.minDiesReserva,self.maxDiesReserva)

    def getOrientation(self):
        return random.randint(0,3)

    def getRandomNumber(self, min,max):
        return random.randint(min,max)
