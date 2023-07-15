//for Sign Up page password
const passwordInput = document.querySelector(".box3")
const eye = document.querySelector("#togglePassword")

eye.addEventListener("click", function(){
    this.classList.toggle("fa-eye-slash")
    const type = passwordInput.getAttribute("type") === "password" ? "text" : "password"
    passwordInput.setAttribute("type", type)
  })

//for Sign Up page Confirm Password
const passwordInput2 = document.querySelector(".box4")
const eye2 = document.querySelector("#togglePassword2")

eye2.addEventListener("click", function(){
    this.classList.toggle("fa-eye-slash")
    const type = passwordInput2.getAttribute("type") === "password" ? "text" : "password"
    passwordInput2.setAttribute("type", type)
  })

function enable(){
    var check = document.getElementById("Privacy_Policy");
    var btn = document.getElementById("btn");
    if(check.checked){
        btn.removeAttribute("disabled");
        btn.style.background='#605DEC';
    }else{
        btn.disabled = "true";
        btn.style.background='#9b9ae7';
    }
}
