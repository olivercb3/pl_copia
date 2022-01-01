class RNG:
    """Class to handle randomness"""
    import random

    rng

    minCapHab = 1
    maxCapHab = 4
    minCapRes = 1
    maxCapRes = 29

    minDiesReserva = 1
    maxDiesReserva = 10

    def __init__(self):
        self.rng = random.seed()

    def __init__(self, mySeed):
        self.rng = random.seed(mySeed)

    def getCapacitatHab():
        return rng.randint(minCapHab,maxCapHab)

    def getCapacitatReserva():
        return rng.randint(minCapRes,maxCapRes)

    def getnumDiesReserva():
        return rng.randint(minDiesReserva,maxDiesReserva)

    def getRandomNumber(min,max):
        return rng.randint(minCapRes,maxCapRes)
