function y=backward_solve_3(b)					

	A=[  1     1     0     1     0     0     0     0     0
	     1     1     1     0     1     0     0     0     0
	     0     1     1     0     0     1     0     0     0
	     1     0     0     1     1     0     1     0     0			#standard A matrix
	     0     1     0     1     1     1     0     1     0
	     0     0     1     0     1     1     0     0     1
	     0     0     0     1     0     0     1     1     0
	     0     0     0     0     1     0     1     1     1
	     0     0     0     0     0     1     0     1     1 ];

	i=1;
	c=zeros(9,1);								
	y=transpose(b);


	while(i<10)														#c is a column matrix with elements of b as its elements 
		c(i)=y(i);
		i++;
	endwhile

	x=inv(A)*c;														#maths for deducing x
	x=(-7)*x;
	x=round(x);
	x=mod(x,2);
	i=1;

	while(i<10)														#creating back 3*3 matrix from column matrix
		y(i)=x(i);			
		i++;
	endwhile

	y=transpose(y);													#y is the action matrix
endfunction

b=input("give the initial state of board");							#asks the user for input

backward_solve_3(b)
