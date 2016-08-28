var buttons = document.getElementsByClassName('click_it');

for (var i = buttons.length - 1; i >= 0; i--) {
	buttons[i].addEventListener("click",clickfunction);
	// buttons[i].addEventListener("mouseover",mousedfunction);
	// buttons[i].addEventListener("mouseout",unmousedfunction);
}

function clickfunction() {

	if(this.nextElementSibling.classList.contains('visible')){
		this.nextElementSibling.classList.remove('visible');
		this.classList.remove('bgcolor');
	}

	else{
		for (var i = buttons.length - 1; i >= 0; i--) {
			var j = buttons[i].nextElementSibling;
			j.classList.remove('visible');
			buttons[i].classList.remove('bgcolor');
		}
		// this.nextElementSibling.classList.toggle('not_visible');
		this.nextElementSibling.classList.toggle('visible');
		this.classList.add('bgcolor');
	}
}

function mousedfunction(){
	// var i = this.nextElementSibling;
	// if(i.contains('visible')){}
	// else{
		this.classList.add('moused');
	// }	
}

function unmousedfunction(){
	// if(this.classList.contains('moused')){
		this.classList.remove('moused');
	// }
}

