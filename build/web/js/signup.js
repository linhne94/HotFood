/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function checkName() {
    var name = document.getElementById("fullname").value;
    var check_name = document.getElementById("error_name");
    var regexName = /^(([A-Za-zÀ-ỹà-ỹ]+[\-\']?)*([A-Za-zÀ-ỹà-ỹ]+)?\s?)+([A-Za-zÀ-ỹà-ỹ]+[\-\']?)*([A-Za-zÀ-ỹà-ỹ]+)?$/;
    if (regexName.test(name)) {
        check_name.innerHTML = "";

    } else {
        check_name.innerHTML = "( Full name is not valid! )";
//       return name;
    }
}

function checkPhone() {
    var phone = document.getElementById("phone").value;
    var checkPhone = document.getElementById("error_phone");
    var regexPhone = /^(\+?84|0)(3[2-9]|5[2689]|7[06789]|8[1-9]|9[0-9])\d{7}$/;
    if (!regexPhone.test(phone)) {
        checkPhone.innerHTML = "( Phone number is not valid! ) ";
    } else {
        checkPhone.innerHTML = "";
        return phone;
    }
}

function checkPass() {
    var pass = document.getElementById("password").value;
    var checkPass = document.getElementById("error_pass");
    var regexPass = /^(?=.*[A-Z])(?=.*[!@#$&*_+=\-?.])(?=.*[0-9]).{8,}$/;

    if (!regexPass.test(pass)) {
        checkPass.innerHTML = "( Password is not strong!  Must have at least 1 uppercase letter, 1 lowercase letter, 1 number and 1 special character  )";
    } else {
        checkPass.innerHTML = "";
    }
}

