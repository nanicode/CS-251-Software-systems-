#!/usr/bin/env python

def function1(str1,str2,my_list):
 	n = min(len(str1),len(str2))
 	str1 = str1[:n]                                                    #slicing both the srtings upto n                                                
 	str2 = str2[:n]
 	map((lambda x,y:my_list.append((x,y))), str1,str2)
 	return my_list

a = [1,5,0,0,5]                                                        #list of 5 elements
b = 'Sandeep'
c=  'Kumar'
print(a)
print(function1(b,c,a))