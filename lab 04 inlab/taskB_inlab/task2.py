#!/usr/bin/env python

def function2(tuplist,n):
	listie = []
	map(lambda x:listie.append(x[n]), tuplist)                                #creating the list with nth element of each tuple
	print(listie)
	tuplist.sort(key = lambda x: x[n])                                        #sort according to nth element of each tuple
	return tuplist                                                            #return sorted list

 