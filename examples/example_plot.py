# matpolotlib workaround for remote machines
import matplotlib
matplotlib.use('Agg')

import matplotlib.pyplot as plt
fig = plt.figure()
ax = fig.add_subplot(111)
ax.plot(range(10))
fig.savefig('temp.png')
