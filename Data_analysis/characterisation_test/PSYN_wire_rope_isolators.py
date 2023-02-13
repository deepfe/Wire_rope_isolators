import numpy as np
import matplotlib.pyplot as plt
from pathlib import Path
from scipy.fftpack import fft

# import data
force = []
displ = []

p=Path(__file__).with_name('sine_sweep_2hz_to_50hz.txt')
with p.open('r') as f:
    for line in f:

        fields = line.strip().split()
        force.append(float(fields[0]))
        displ.append(-float(fields[1]))

#plot force/displacement graph
plt.figure(1)
plt.plot(displ[1:1000],force[1:1000])   #change the parameters to obtain more cycles on the hysteresis loop
plt.xlabel('Displacement (mm)')
plt.ylabel('Force (N)')


#frequency analysis

sr=2000 #sampling rate
T=150 #total time
ts=100/sr
N=len(displ)
t=np.linspace(0,100,N)
#plt.plot(time,displ)
#plt.show()

X = fft(displ)
n=np.arange(N)
freq=np.linspace(0.0,T/(2.0*ts),N//2)
frf=2.0/N * X[0:N//2]
print(N)
plt.figure(2)
plt.plot(freq,np.abs(frf))
plt.xlabel('Freq(HZ)')
plt.ylabel('FFT')
plt.show()

