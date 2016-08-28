function y = f(x)    
	[nx,ny] = textread('input_inlab_task_A1.txt' , "%f");  #reads input into nx and ny
	y=sin(x)*(ny*sin(x)*sin(x/3)-1)+cos(x)*nx;  #x=incident angle 
endfunction
	[ x, info ] = fsolve("f" , 0.)  #solves the equation which gives trisection
	fid = fopen('output_inlab_task_A1.txt', "w");
 	fprintf(fid, "%f" , x);
	fclose(fid);
