document.addEventListener('DOMContentLoaded', function () {
    var userContainer = document.querySelector('.usercontainer');
    var userLogin = document.querySelector('#login');
    var newUser = document.querySelector('#new');
    var guestUser = document.querySelector('#guest');
    var user = document.querySelector('#userlogin');


    userLogin.addEventListener('click',function () {
      userContainer.style.display = 'block';
      userLogin.style.display = 'none';
      newUser.style.display = 'none';
      guestUser.style.display = 'none';
    });

    user.addEventListener('click',function () {
      var email = document.querySelector('#email');
      var password = document.querySelector('#password');
      if (email.value === "" && password.value === ""){
        email.placeholder = "Enter valid email";
        password.placeholder = "Enter valid password"
      }
      if (email.value === ""){
        email.placeholder = "Enter valid email";
      } else if (password.value === ""){
        password.placeholder = "Enter valid password";
      }
  });
});
