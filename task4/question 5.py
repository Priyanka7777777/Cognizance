#-------------------------------------------------------------------------------
# Name:        module1
# Purpose:
#
# Author:      Priyanka sarraf
#
# Created:     22/02/2022
# Copyright:   (c) Priyanka sarraf 2022
# Licence:     <your licence>
#-------------------------------------------------------------------------------

rows = int(input("Enter the number of rows:"))
k = 2 * rows
for i in range(0, rows):
    for j in range(0, k):
        print(end=" ")
    k = k-1
    for j in range(0, i + 1):
        print("* ", end="")
    print("")