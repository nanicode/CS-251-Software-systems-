A=[1 1 0 1 0 0 0 0 0               
   1 1 1 0 1 0 0 0 0
   0 1 1 0 0 1 0 0 0
   1 0 0 1 1 0 1 0 0 
   0 1 0 1 1 1 0 1 0          #the matrix used to find the effect of any action matrix
   0 0 1 0 1 1 0 0 1
   0 0 0 1 0 0 1 1 0
   0 0 0 0 1 0 1 1 1 
   0 0 0 0 0 1 0 1 1];

b=input("initial");           #b takes the initial state of the board
x=input("action");            #x takes the action performed	

function y=f(b,x,A)           #returns the final state after the action
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

f(b,x,A)
