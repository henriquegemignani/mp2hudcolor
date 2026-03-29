from setuptools import setup, Extension
from Cython.Build import cythonize

extensions = [
    Extension(
        "mp2hudcolor",
        ['mp2hudcolor/mp2hudcolor_wrapper.pyx'],
        py_limited_api=True,
        define_macros=[("Py_LIMITED_API", "0x030a0000")],
    )
]

setup(
    ext_modules=cythonize(extensions),
    options={
        "bdist_wheel": {
            "py_limited_api": "cp310",
        }
    },
)
