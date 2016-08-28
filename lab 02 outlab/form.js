function foctext(){
	document.getElementById("flag").innerHTML = '';
	document.getElementById("text").style.borderColor = "#ccc";
}

function textfunction(){
	 //document.getElementById("flag").innerHTML = '';
	 var username = document.getElementById("text").value;
	 if (username == ""){
	 	document.getElementById("text").style.borderColor = "#E34234";
	 	document.getElementById("flag").innerHTML = 'Do not leave this empty';
	 	return false;
     }
     if (username.length < 6 || username.length > 50){
     	document.getElementById("text").style.borderColor = "#E34234";
     	document.getElementById("flag").innerHTML = 'Length should be in between 6 & 50 both inclusive';
     	return false;
     }
     return true;
}

function focpass() {
	document.getElementById("demo1").innerHTML = '';
	document.getElementById("password").style.borderColor = "#ccc";
}

 function passfunction(){
 	//document.getElementById("demo1").innerHTML = '';
 	var pass1 = document.getElementById("password").value;
 	var pass2 = document.getElementById("confirm_password").value;

 	if (pass1 == ''){
 		document.getElementById("password").style.borderColor = "#E34234";
		document.getElementById("demo1").innerHTML = 'You can not leave this empty';
		return false;
 	}

 	if (pass1.length < 8 || pass1.length > 20){
 		document.getElementById("password").style.borderColor = "#E34234";
		document.getElementById("demo1").innerHTML = 'length should be in between 8 & 20';
		return false;
 	}

 	if(!(pass1.includes('!') || pass1.includes('@') || pass1.includes('$') || pass1.includes('_'))){
     	document.getElementById("password").style.borderColor = "#E34234";
     	document.getElementById("demo1").innerHTML = 'password should include atleast one of the characters from the set {!,@,$,_}';
     	return false;
     }

     if (pass2 != '' && pass1 != pass2){
     	document.getElementById("password").style.borderColor = "#E34234";
	    document.getElementById("confirm_password").style.borderColor = "#E34234";
        document.getElementById("demo2").innerHTML = 'Passwords do not match';
       	return false;
     }
     return true;
 }

function foc_confirm(){
	document.getElementById("confirm_password").style.borderColor = "#ccc";
 	document.getElementById("demo2").innerHTML = '';
}

 function confirmfunction(){
 	var pass1 = document.getElementById("password").value;
 	var pass2 = document.getElementById("confirm_password").value;

 	if (pass2 == ''){
 		document.getElementById("confirm_password").style.borderColor = "#E34234";
 		document.getElementById("demo2").innerHTML = 'Retype your password here';
 		return false;
 	}

 	if (pass2.length < 8 || pass2.length > 20){
 		document.getElementById("confirm_password").style.borderColor = "#E34234";
 		document.getElementById("demo2").innerHTML = 'length should be in between 8 & 20';
 		return false;
 	}

 	if (pass1 != pass2 && pass1 != '') {
      	document.getElementById("password").style.borderColor = "#E34234";
	    document.getElementById("confirm_password").style.borderColor = "#E34234";
        document.getElementById("demo2").innerHTML = 'Passwords do not match';
       	return false;
    }
    return true;
 }

function focmail(){
	document.getElementById("emailp").innerHTML = "";
	document.getElementById("mail").style.borderColor = "#ccc";
}

function validateEmail(){
		document.getElementById("emailp").innerHTML = "";
        var reg = /^([A-Za-z0-9_\.])+\@([A-Za-z.])+\.([A-Za-z])+$/;
        var emailField = document.getElementById('mail');
        var str = emailField.value;
        var checkat = str.indexOf('@'); 
        // var checkat = this.value.indexOf('@');

        if (reg.test(emailField.value) == false || checkat<2){
        	document.getElementById("mail").style.borderColor = "#E34234";
            document.getElementById("emailp").innerHTML= 'Your email id is incorrect';
            return false;
        }

        var flag = str.slice(checkat+1);
        var demo = flag.indexOf('.');
        if(demo < 3){
        	document.getElementById("mail").style.borderColor = "#E34234";
        	document.getElementById("emailp").innerHTML = 'There should be atleast 3 characters between "@" and first period';
        	return false;
        }
        flag = flag.slice(demo+1);
        while(flag.indexOf('.') != -1){
        	demo = flag.indexOf('.');
        	if(demo < 2){
        		document.getElementById("mail").style.borderColor = "#E34234";
        		document.getElementById("emailp").innerHTML = 'There should be atleast 2 characters between any two periods';
        		return false;
        	}
        	flag = flag.slice(demo+1);
        }
        if(flag.length < 2){
        	document.getElementById("mail").style.borderColor = "#E34234";
        	document.getElementById("emailp").innerHTML = 'The last period must be followed by atleast more than two characters';
        	return false;
        }
        return true;

}

function myFunction(){
	var x = textfunction();
	var y = passfunction();
	var z = confirmfunction();
	var m = validateEmail();

	if(x && y && z && m){
		return true;
	}


	return false;
}

function textxss(){
	var str = document.getElementById("text").value;
	var x = str.length;
	var flag = "";
	for( var i = 0; i<x; i++){
		if(str[i] == '<'){
			flag = flag + '&lt;' ; 
		}
		else if (str[i] == '>'){
			flag = flag + '&gt;' ;
		}
		else if (str[i] == '"'){
			flag = flag + '&quot';
		}
		else {
			flag = flag + str[i];
		}
	}
	document.getElementById("text").innerHTML = flag ;

	var str = document.getElementById("password").value;
	var x = str.length;
	var flag = "";
	for( var i = 0; i<x; i++){
		if(str[i] == '<'){
			flag = flag + '&lt;' ; 
		}
		else if (str[i] == '>'){
			flag = flag + '&gt;' ;
		}
		else if (str[i] == '"'){
			flag = flag + '&quot';
		}
		else {
			flag = flag + str[i];
		}
	}
	document.getElementById("password").innerHTML = flag ;

	var str = document.getElementById("confirm_password").value;
	var x = str.length;
	var flag = "";
	for( var i = 0; i<x; i++){
		if(str[i] == '<'){
			flag = flag + '&lt;' ; 
		}
		else if (str[i] == '>'){
			flag = flag + '&gt;' ;
		}
		else if (str[i] == '"'){
			flag = flag + '&quot';
		}
		else {
			flag = flag + str[i];
		}
	}
	document.getElementById("confirm_password").innerHTML = flag ;
}

