import sys
import argparse

def inputHandler(args):
    parser = argparse.ArgumentParser(
        description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('-o', '--outfile', help="Output file. Default = ouput.pddl",
                        default='output.pddl', type=str)
    parser.add_argument('-nh', '--habitacions', help="Numero de habitacions. Default = 10",
                        default=10, type=int)
    parser.add_argument('-r', '--reserves', help="Numero de reserves. Default = 15",
                        default=15, type=int)
    parser.add_argument('-d', '--dies', help="Numero de dies. Default = 30",
                        default=30, type=int)
    parser.add_argument('-e', '--extensio', help="Extensio del joc de proves, nivell basic = 0. Default = ouput.pddl",
                        default=0, type=int)

    arguments = vars(parser.parse_args(args))

    return arguments
