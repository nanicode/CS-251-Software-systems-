function y = f(x,x0 ,y0 ,x1 ,y1 ,v1 ,v2 ,d ,w ,n ,t1)		
     y =(v2-v1*secd(x))*(x1-x0+w*(tand(x)-sind(x)/sqrt(n^2-sind(x)^2))-(y1-y0+v1*t1)*tand(x))-v1*tand(x)*(w*(n^2/sqrt(n^2-sind(x)^2)-secd(x))+(y1-y0+v1*t1)*secd(x));																	#equation to calculate theta
endfunction 

[x0 ,y0 ,x1 ,y1 ,v1 ,v2 ,d ,w ,n ,t1 ] = textread( 'input_outlab_task_A2.txt' , "%f");			#takes input from input file
[x,info] = fsolve (@(x) f(x ,x0 ,y0 ,x1 ,y1 ,v1 ,v2 ,d ,w ,n ,t1) ,0);  			 			#solves the value of theta
fid=fopen('output_outlab_task_A2.txt' , "w");													#creates an output file
y=y1+v1*(t1+cotd(x)*(x1-x0+w*(tand(x)-sind(x)/sqrt(n^2-sind(x)^2))-(y1-y0+v1*t1)*tand(x))/v1);	#to calculate final y cordinate
fprintf(fid, "%s",num2str(x)," " ,num2str(x1-x0)," ",num2str(y-y0));							#prints the required output in the file 
fclose(fid);  																					#closes the opened file
