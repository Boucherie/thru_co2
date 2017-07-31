
document.addEventListener('DOMContentLoaded', function () {
    var userContainer = document.querySelector('.usercontainer');
    var userLogin = document.querySelector('#login');
    var newUser = document.querySelector('#new');
    var guestUser = document.querySelector('#guest');

    var user = document.querySelector('#userlogin');

    var newsignup = document.querySelector('#newsignup');

    if (userLogin) {
      userLogin.addEventListener('click',function () {
        userContainer.style.display = 'block';
        userLogin.style.display = 'none';
        newUser.style.display = 'none';
        guestUser.style.display = 'none';
      });
    }

    if (user) {
      user.addEventListener('click',function (event) {
        var email = document.querySelector('#email');
        var password = document.querySelector('#password');

        if (email.value === ""){
          event.preventDefault();
          email.placeholder = "Enter valid email";
          email.className = email.className + " error ";
        }
        if (password.value === ""){
          event.preventDefault();
          password.placeholder = "Enter valid password";
          password.className = password.className + " error ";
        }
      });
    }

    if (newsignup){
    newsignup.addEventListener('click', function (event) {
      var newemail = document.querySelector('#user_email');
      var newpassword = document.querySelector('#user_password');
      var newpasswordconfirm = document.querySelector('#user_password_confirmation');

      if (newemail.value === ""){
        event.preventDefault();
        newemail.placeholder = "Enter Email";
        newemail.className = newemail.className + " error ";
      }
      if (newpassword.value === ""){
        event.preventDefault();
        newpassword.placeholder = "Enter Password";
        newpassword.className = newpassword.className + " error ";
      }
      if (newpasswordconfirm.value === ""){
        event.preventDefault();
        newpasswordconfirm.placeholder = "Enter Password";
        newpasswordconfirm.className = newpasswordconfirm.className + " error ";
      }
    });
  };
});
