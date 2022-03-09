#-------------------------------------------------------------------------------
# Name:        module1
# Purpose:
#
# Author:      Priyanka sarraf
#
# Created:     09/03/2022
# Copyright:   (c) Priyanka sarraf 2022
# Licence:     <your licence>
#-------------------------------------------------------------------------------


r=[]
n=int(input("Number of elements in array:\n"))
print("Enter the elements of the First array")
for i in range(0,n):
   l=int(input())
   r.append(l)
b=[]

print(("Enter the elements of the Second array\n"))
for i in range(0,n):
    l=int(input())
    b.append(l)

if r==b:
 print("True")
else:
 print("False")
