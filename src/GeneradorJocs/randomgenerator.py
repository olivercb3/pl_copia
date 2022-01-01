# -*- coding: utf-8 -*-)
from __future__ import unicode_literals
#!/usr/bin/python
import random as p

class RNG:
    """Class to handle randomness"""


    minCapHab = 1
    maxCapHab = 4
    minCapRes = 1
    maxCapRes = 2

    minDiesReserva = 1
    maxDiesReserva = 10

    def __init__(self):
        return
        self.rng = p.seed()
        print(p.seed().randint(0,5))

    def changeSeed(self,mySeed):
        self.rng = random.seed(mySeed)

    def setUp(args):
        return

    def getCapacitatHab(self):
        return 3
        return self.rng.randint(minCapHab,maxCapHab)

    def getCapacitatReserva(self):
        return 2
        return self.rng.randint(minCapRes,maxCapRes)

    def getnumDiesReserva(self):
        return 3
        return self.rng.randint(minDiesReserva,maxDiesReserva)

    def getRandomNumber(self, min,max):
        return 4
        return self.rng.randint(min,max)
