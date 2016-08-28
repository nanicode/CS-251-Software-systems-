function A=f(x1,x2)									#function for creating the A matrix
	n=x1*x2;
	A=zeros(n);
	i=1;
	j=1;

	while i<n+1
		while j<n+1
			if(abs(i-j)==0) A(i,j)=1;
			elseif(abs(i-j)==1) A(i,j)=1;			#A(i,j)=1 if light i toggles on clicking button j
			elseif(abs(i-j)==x2) A(i,j)=1;
			endif
			j++;
		endwhile
		j=1;
		i++;
	endwhile

	i=1;
	while i<x1
		A(x2*i,x2*i+1)=0;
		A(x2*i+1,x2*i)=0;
		i++;
	endwhile

endfunction

function y=backward_solve(b)						#to solve action matrix

	[x1 x2] = size(b);
	A = f(x1,x2);									#the A matrix is created 
	n=x1*x2;
	i=1;
	c=zeros(n,1);
	y=transpose(b);

	while(i<n+1)									
		c(i)=y(i);
		i++;
	endwhile										#c is the column matrix with elements of b as its elements

	x=inv(A)*c;
	x=det(A)*x;
	x=round(x);										#math for finding x
	x=mod(x,2);
	i=1;

	while(i<n+1)
		y(i)=x(i);
		i++;
	endwhile

	y=transpose(y);									#creating back actual sized matrix from column matrix
endfunction

b=input("give the initial state of board");			#asks for input from the user

backward_solve(b)
