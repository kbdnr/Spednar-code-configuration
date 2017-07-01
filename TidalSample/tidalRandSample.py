#random tidal sample utility intended for tidal function testing
from config import DirtDirectory
from random import randint
import os

#sampleFolders = [x[0] for x in os.walk(DirtDirectory)] --slow
sampleFolders = [o for o in os.listdir(DirtDirectory) if os.path.isdir(os.path.join(DirtDirectory,o))]

os.popen('xsel', 'wb').write(sampleFolders[randint(0, len(sampleFolders)-1)])
