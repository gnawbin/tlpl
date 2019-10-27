from ctypes import *
import ctypes
import numpy 
from Cython.Compiler.PyrexTypes import CType
INPUT=c_int*10
myinput=INPUT()
INPUT01=c_int*100
myinput01=INPUT01()
arr1=numpy.zeros(100,dtype=ctypes.c_int)

if not arr1.flags['C_CONTIGUOUS']:
    arr1=numpy.ascontiguousarray(arr1, dtype=numpy.dtype)

cptr=arr1.ctypes.data_as(POINTER(ctypes.c_int))

so=ctypes.cdll.LoadLibrary
lib=so('/media/wangbin/36005E93005E59C7/tlpl/bin/bin/src/algorithm_example/libtestpy.so')   
print('myTest(int* myData,int dataNum,Pose& mypose)')
class Point(ctypes.Structure):
    _fields_=[('p_x',ctypes.c_float),
              ('p_y',ctypes.c_float),
              ('p_x',ctypes.c_float)]

pointtemp=Point(0.0,0.0,0.0)

class Pose(ctypes.Structure):
    _fields_=[
        ('x',ctypes.c_float),
        ('y',ctypes.c_float),
        ('z',ctypes.c_float),
        ('data',POINTER(ctypes.c_int)),
        ('location',Point) 
        ] 
    
posetemp=Pose()
posetemp.x=0.0

posetemp.y=0.0
posetemp.z=0.0
posetemp.data=myinput01
posetemp.location=pointtemp

lib.myTest(myinput,100,ctypes.byref(posetemp))
print(myinput[0])
print(posetemp.x)
