import numpy as np
import matplotlib.pyplot as plt
from pathlib import Path
from scipy.fftpack import fft


#define counters for the hysteresis cycles
i=0
j=i+10000


# import data
force1 = []
displ1 = []
p=Path(__file__).with_name('20Hz_A1.txt')
with p.open('r') as f:
    for line in f:

        fields = line.strip().split()
        force1.append(float(fields[0]))
        displ1.append(-100*float(fields[1])) #convert data from cm to mm and the correct system of reference
force2 = []
displ2 = []
p=Path(__file__).with_name('20Hz_A2.txt')
with p.open('r') as f:
    for line in f:

        fields = line.strip().split()
        force2.append(float(fields[0]))
        displ2.append(-100*float(fields[1])) #convert data from cm to mm and the correct system of reference
force3 = []
displ3 = []
p=Path(__file__).with_name('20Hz_A3.txt')
with p.open('r') as f:
    for line in f:

        fields = line.strip().split()
        force3.append(float(fields[0]))
        displ3.append(-100*float(fields[1])) #convert data from cm to mm and the correct system of reference
force4 = []
displ4 = []
p=Path(__file__).with_name('20Hz_A4.txt')
with p.open('r') as f:
    for line in f:

        fields = line.strip().split()
        force4.append(float(fields[0]))
        displ4.append(-100*float(fields[1])) #convert data from cm to mm and the correct system of reference

#plot force/displacement graph
plt.figure(1)
plt.plot(displ1[i:j],force1[i:j],label="min")   #change the parameters to obtain more cycles on the hysteresis loop
plt.plot(displ2[i:j],force2[i:j],label=" ")
plt.plot(displ3[i:j],force3[i:j],label=" ")
plt.plot(displ4[i:j],force4[i:j],label="max")
plt.title('20 Hz test')
plt.xlabel('Displacement (mm)')
plt.ylabel('Force (N)')
plt.legend(loc="best")
plt.show()