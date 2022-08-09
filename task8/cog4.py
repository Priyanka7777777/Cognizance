import pandas as pd
result=""
length= int(input("enter the length of array: "))
element=[(input('enter the element: '))
for i in range(length)]
s_element= pd.Series(element)
for i in range(len(element)):
    result+=('' + s_element[i])
    
print(result.title())
