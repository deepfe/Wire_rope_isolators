import numpy as np
import matplotlib.pyplot as plt
from pathlib import Path
from scipy.fftpack import fft


#define counters for the hysteresis cycles
i=0
j=i+125000

# import data
force = []
displ = []

p=Path(__file__).with_name('sine_sweep_2hz_to_50hz.txt')
with p.open('r') as f:
    for line in f:

        fields = line.strip().split()
        force.append(float(fields[0]))
        displ.append(-100*float(fields[1])) #convert data from cm to mm and the correct system of reference

#plot force/displacement graph
plt.figure(1)
plt.plot(displ[i:j],force[i:j])   #change the parameters to obtain more cycles on the hysteresis loop
plt.xlabel('Displacement (mm)')
plt.ylabel('Force (N)')


#frequency analysis

sr=10240 #sampling rate
N=len(displ)
T=N/sr #total time
ts=T/sr
t=np.linspace(0,T,N)

#perform FFT to study the frequency content
X = fft(displ)
n=np.arange(N)
freq=np.linspace(0.0,T/(2.0*ts),N//2)
frf=2.0/N * X[0:N//2]

#plot the FFT
plt.figure(2)
plt.plot(freq[0:10000],np.abs(frf[0:10000]))
plt.xlabel('Freq(HZ)')
plt.ylabel('FFT')

#plot displacement graph
plt.figure(3)
plt.plot(t[i:j],displ[i:j])   #change the parameters to obtain more cycles on the hysteresis loop
plt.ylabel('Displacement (mm)')
plt.xlabel('Time (s)')

plt.show()