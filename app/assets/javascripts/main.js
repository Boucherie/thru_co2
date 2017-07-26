document.addEventListener('DOMContentLoaded', function () {
    var userContainer = document.querySelector('.usercontainer');
    var userLogin = document.querySelector('#login');
    var newUser = document.querySelector('#new');
    var guestUser = document.querySelector('#guest');

    userLogin.addEventListener('click',function () {
      userContainer.style.display = 'block';
      userLogin.style.display = 'none';
      newUser.style.display = 'none';
      guestUser.style.display = 'none';
  });
});
