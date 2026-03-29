from setuptools import setup, Extension
from Cython.Distutils import build_ext

src = [
    'mp2hudcolor/mp2hudcolor_wrapper.pyx'
]

extensions = [
    Extension(
        "mp2hudcolor",
        src,
        py_limited_api=True,
        define_macros=[("Py_LIMITED_API", "0x030a0000")],
    )
]

setup(
    ext_modules=extensions,
    cmdclass={'build_ext': build_ext},
    package_data={'mp2hudcolor': ['mp2hudcolor.c']},
    options={
        "bdist_wheel": {
            "py_limited_api": "cp310",
        }
    },
)
