A=[1 1 0 1 0 0 0 0 0
   1 1 1 0 1 0 0 0 0
   0 1 1 0 0 1 0 0 0
   1 0 0 1 1 0 1 0 0 
   0 1 0 1 1 1 0 1 0         # the matrix used to find the effect of any action matrix
   0 0 1 0 1 1 0 0 1
   0 0 0 1 0 0 1 1 0
   0 0 0 0 1 0 1 1 1 
   0 0 0 0 0 1 0 1 1];

m=[0 0 0
   1 0 0                     
   0 0 0];

n=[0 0 0
   0 0 0 
   0 1 0];                   # m,n,p,q are the matrices used in transformations

p=[1
   0
   0];

q=[0 0 1];

function y=f(b,x,A)         # returns the final state after a action
	temp=zeros(9,1);
	x=transpose(x);
	i=1;
	while i<10
		temp(i)=x(i);
		i++;
	endwhile
	temp=A*temp;
	i=1;
	while i<10
		x(i)=temp(i);
		i++;
	endwhile
	x=transpose(x);
	b=b+x;
	y=mod(b,2);
endfunction

function y=g(x)                         #a mapping from left  side of the table to right side
	if(x==[0 0 1])     y=[0 1 1];
	elseif(x==[0 1 0]) y=[1 1 1];
	elseif(x==[0 1 1]) y=[1 0 0];
	elseif(x==[1 0 0]) y=[1 1 0];
	elseif(x==[1 0 1]) y=[1 0 1];
	elseif(x==[1 1 0]) y=[0 0 1];
	elseif(x==[1 1 1]) y=[0 1 0];
	elseif(x==[0 0 0]) y=[0 0 0];
	endif
endfunction

b=input("initial");                    #takes in the initial matrix

x1=m*b;
b=f(b,m*b,A);						   #the first row is made to be zero 
x2=n*b;
b=f(b,n*b,A);						   #the second row is made to be zero

x3=p*(g(q*b));                         
b=f(b,x3,A);                           #after the action according to the table

x4=m*b;
b=f(b,m*b,A);                          #making the first two rows zero again
x5=n*b;
b=f(b,n*b,A);

mod(x1+x2+x3+x4+x5,2)                  #the sum gives total of the actions taken
