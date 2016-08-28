function y = f(x)                                                                   
	[x1 ,y1 ,d ,w ,n ] = textread( 'input_outlab_task_A1.txt' , "%f");	#takes in the input from that file 		
    y(1) = sind(x(1))-n*sind(x(2));					            	    #snells law eqation
    y(2) = (y1-w)*tand(x(1))+w*tand(x(2))-x1;			        	    #equating x-coordinates
endfunction             

[x]=fsolve(@f,[0;0]);							                        #solves for angle of incidence and refraction
fid=fopen('output_outlab_task_A1.txt' , "w");				            #creates an output file
fprintf(fid, "%f",x(1));						                        #prints the value of angle with y-axis in the output file
fclose(fid);								                            #closes the opened file
