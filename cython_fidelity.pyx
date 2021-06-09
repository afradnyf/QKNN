import numpy as np
def cython_fidelity(double[:] x, double[:] y):
  cdef int n = x.shape[0]
  cdef int n2 = x.shape[0]/2
  cdef double res1 = 0
  cdef double resbis1 = 0
  cdef double res2 = 0
  cdef double resbis2 = 0
  for i in range(n2):
    res1 += (x[i] * y[i]) + (x[n2 + i] * y[n2 + i])
    res2 += (x[n2 + i] * y[i]) - (x[i] * y[n2 + i])
  return 1 - (res1 * res1) - (res2 * res2)