#-------------------------------------------------------------------------------
# Name:        module1
# Purpose:
#
# Author:      Priyanka sarraf
#
# Created:     21/02/2022
# Copyright:   (c) Priyanka sarraf 2022
# Licence:     <your licence>
#-------------------------------------------------------------------------------

n=int(input('enter the no of students'))
a= [['rollno','name','marks']]
for i in range(n):
    roll= input('enter rollno:')
    studentname=input('enter student:')
    marks=int(input('enter marks:'))
    a.append([roll,studentname,marks])
for i in range(len(a)):
    for j in range(len(a[i])):
        k=a[i][j]
        print(k,end='\t')

    print('\n')
h=int(input('enter the row to be printed'))
for i in a[h]:
    print(i,end='\t')
