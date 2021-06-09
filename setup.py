
from distutils.core import setup
from Cython.Build import cythonize

setup(name="cython_fidelity", ext_modules=cythonize('cython_fidelity.pyx'),)