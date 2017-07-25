document.addEventListener('DOMContentLoaded', function () {

    var userContainer = document.querySelector('.usercontainer');
    var userLogin = document.getElementById('#userlogin');

    userLogin.addEventListener('click',function popup() {
      userContainer.style.display = 'block';
  });
});
