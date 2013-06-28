
//make XML HTTP Request (xhr)
var xhr = new XMLHttpRequest();

//request is being made
xhr.open("GET", "http://www.codecademy.com/", false);
// Add your code below!

//sending request
xhr.send();

//getting status
console.log(xhr.status); //200
console.log(xhr.statusText);   //ok

// 4 HTTP methods you need to know:
// GET: retrieves information from the specified source (you just saw this one!)
// POST: sends new information to the specified source.
// PUT: updates existing information of the specified source.
// DELETE: removes existing information from the specified source.


// Example request. Has 3 parts: request line (tells the server what kind of request is being made),
// header (additional info for server, ie. who is making request),
//body: is empty if GET | contains data if PUT|POST

POST /codecademy/learn-http HTTP/1.1 //request line
Host: www.codecademy.com  //header
Content-Type: text/html; charset=UTF-8 //header

Name=Eric&Age=26  //body

//Response of HTTP request contains a response line (3 digit status code),
//header ( includes info about the server and its reponse,
  //body ( text of the response)

// BOILERPLATE code to set up a basic HTML document

// Your use of the YouTube API must comply with the Terms of Service:
// https://developers.google.com/youtube/terms

// Helper function to display JavaScript value on HTML page.
function showResponse(response) {
    var responseString = JSON.stringify(response, '', 2);
    document.getElementById('response').innerHTML += responseString;
}

// Called automatically when JavaScript client library is loaded.
function onClientLoad() {
    gapi.client.load('youtube', 'v3', onYouTubeApiLoad);
}

// Called automatically when YouTube API interface is loaded (see line 9).
function onYouTubeApiLoad() {
    // This API key is intended for use only in this lesson.
    // See http://goo.gl/PdPA1 to get a key for your own applications.
    gapi.client.setApiKey('AIzaSyCR5In4DZaTP6IEZQ0r1JceuvluJRzQNLE');

    search();
}

function search() {
    // Use the JavaScript client library to create a search.list() API call.
    var request = gapi.client.youtube.search.list({
        part: 'id'  //Change "id" to "snippet" to get more info about each vidoe
        //add q: "search string" to filter request by additional parameters
    });

    // Send the request to the API server,
    // and invoke onSearchRepsonse() with the response.
    request.execute(onSearchResponse);
}

// Called automatically with the response of the YouTube API request.
function onSearchResponse(response) {
    showResponse(response);
}