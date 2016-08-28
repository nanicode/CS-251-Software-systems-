Task -A
-------
There exists a function which gives suggestions when the given command is not found.
The function executes a executable which is python script.


Task - B
--------
/proc/meminfo		          								->B1

grep -r "Mem" /proc/meminfo     						    ->B2
	
grep -r "Mem" /proc/meminfo | tr -d " " 					->B3

grep -r "Mem" /proc/meminfo | tr -d " " | cut -d ":" -f 2	->B4


Task - C
--------
ssh -X anirudhk@mars.cse.iitb.ac.in							->remote login

subl /tmp/lab3_inlab_C3.txt									->opening sublime on mars with GUI in local

Task D
-----
bash ./infiniteLoop.sh&										-> for runnig in background


Anirudh reddy - 150050070 -100%

Sandeep kumar - 150050082 -100%

Lohith kumar - 150050088  -100%

Honour codes:
	Anirudh- I pledge on my honour that I have not given or received any unauthorized assistance on this or any of 	         the previous tasks.
	Sandeep- I pledge on my honour that I have not given or received any unauthorized assistance on this or any of 	         the previous tasks.
	Lohith - I pledge on my honour that I have not given or received any unauthorized assistance on this or any of 	         the previous tasks.
