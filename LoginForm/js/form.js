// validate user login
function autenticate() {
    var username = document.getElementById("username").value;
    var enterpass = document.getElementById("enterpass").value;
    var reenterpass = document.getElementById("reenterpass").value;

    if (username == "user"&& enterpass == "pass"&& reenterpass == "pass") {
        
        dropdown.style.display = "block";
          
    }
    else {
        alert("login failed!");
    }
}