function myFunction() {
	var input, filter, ul, li, a, i;

	input = document.getElementById("myInput");

	filter = input.value.toUpperCase();

	ul = document.getElementById("filter-links");

	li = ul.getElementsByTagName("li");

	for (i = 0; i < li.length; i++) {
		a = li[i].getElementsByTagName("a")[0];
		if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
			li[i].style.display = "";
		} else {
			li[i].style.display = "none";
		}
	}
}


var items = document.querySelectorAll('.filter-sections div');

each('.filter-links li a', function(el) {
	el.addEventListener('click', function(e) {
		e.preventDefault();
		filterLinks(el);
	});
});

function filterLinks(element) {
	var el = element.textContent,	
	linksTolowerCase = el.toLowerCase();	
	if (el === 'All') {
		each('.view', function(e) {
			e.classList.remove('view');
		});
		animate(items);
	} else {
		each('.view', function(e) {
			e.classList.remove('view');
		});
	}

	animate(document.querySelectorAll('.' + linksTolowerCase));
};


function each(el, callback) {
	var allDivs = document.querySelectorAll(el),
	alltoArr = Array.prototype.slice.call(allDivs);
	Array.prototype.forEach.call(alltoArr, function(selector, index) {
		if (callback) return callback(selector);
	});
};


function animate(item) {
	(function show(counter) {
		setTimeout(function() {
			item[counter].classList.add('view');
			counter++;
			if (counter < item.length) show(counter);
		},50);
	})(0);
};
