async function start() {
	// Grab data from textbox and get json from api
	author = document.getElementById('authorname').value;
	let response = await fetch("http://openlibrary.org/search.json?author=" + author);
	let data = await response.json();
	console.log(data.docs);
	sendData(data.docs);
};

function sendData(docs) {
	var title = '';
	var author = '';
	var str = '';
	var id = '';
	// For each element in the json object, generate a random id and send it via GET
	for (i = 0; i < docs.length; i++) {
		title = docs[i].title;
		author = docs[i].author_name[0];
		id =  Math.floor(Math.random() * 199 + 1) * 1000 + i;
		console.log(title + ', ' + author);
		str = "http://localhost:3000/api?id=" + id + "&title=" + title + "&author=" + author;
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", str, true);
		xmlhttp.send();
	}
}