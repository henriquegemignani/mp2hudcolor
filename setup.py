from setuptools import setup, Extension, find_packages
from Cython.Distutils import build_ext

src = ['src/mp2hudcolor_wrapper.pyx']

extensions = [
    Extension("mp2hudcolor", src)
]

setup(
    name="mp2hudcolor",
    version="1.0",
    packages=find_packages(),
    ext_modules=extensions,
    cmdclass={"build_ext": build_ext},
)
