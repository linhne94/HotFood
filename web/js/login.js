const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
    container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
    container.classList.remove("right-panel-active");
});

function checkInput() {
  var phoneInput = document.querySelector('input[name="phone"]');
  var phoneNumber = phoneInput.value;
//  var errorSpan = document.getElementById("error");
  var errorphone = document.getElementById("txt_phone");
  // Regex pattern for phone number: 10-12 digits without spaces or special characters
  var phoneRegex = /^\d{10,12}$/;
  
if (!phoneRegex.test(phoneNumber)) {
    errorphone.textContent = "Số điện thoại không hợp lệ. Vui lòng nhập lại.";
  } else {
    errorphone.textContent = "";
  }
}