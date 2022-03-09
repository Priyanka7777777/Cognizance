10#-------------------------------------------------------------------------------
# Name:        module1
# Purpose:
#
# Author:      Priyanka sarraf
#
# Created:     09/03/2022
# Copyright:   (c) Priyanka sarraf 2022
# Licence:     <your licence>
#-------------------------------------------------------------------------------

a=int(input("enter the first number\n"))
b=int(input("enter the second number\n"))
c=""
d=".  0.  0.  0.  0.  0. "
for i in range(a,b):
    c=c+str(i)+d
print(c + str(b))
