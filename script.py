import os
import webbrowser,subprocess
from sys import platform
import time

initial = os.getcwd()



path = os.path.abspath('./PruebasGhostE2Ev0/cypress/Report1.html')
url = 'file://' + path
webbrowser.open(url)
path = os.path.abspath('./PruebasGhostE2Ev1/cypress/Report2.html')
url = 'file://' + path
webbrowser.open(url)



report = os.chdir(initial+ '/Backstop')
os.system("backstop approve")
os.system("backstop test")
