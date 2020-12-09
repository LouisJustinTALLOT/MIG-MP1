import numpy as np
import math
import matplotlib.pyplot as plt
from pylab import*


C_0 = 1
U = 2e-8
D = 1e-8
tannee = 317
t = tannee * 365 * 24 * 3600
# t = 10_000_000_000

def f(x):
    return (C_0/2)*(math.erfc((x - U*t)/(2*math.sqrt(D*t))) + np.exp(-(U*x)/D)*math.erfc((x + U*t)/(2*math.sqrt(D*t))))

x = np.linspace(0, 420, 420)
# y = np.array([f(i) for i in x])
y = np.vectorize(f)(x)
plt.plot(x,y)
plt.show()
