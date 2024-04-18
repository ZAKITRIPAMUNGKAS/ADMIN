<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
    <style>
      body {
        background-color: #f8f9fa;
      }
      .container {
        margin-top: 80px;
      }
      .login-form {
        background-color: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
      }
      .login-form h2 {
        margin-bottom: 30px;
        text-align: center;
        color: #007bff;
      }
      .login-form .form-group {
        margin-bottom: 25px;
      }
      .login-form input[type="text"],
      .login-form input[type="password"] {
        height: 50px;
        font-size: 16px;
        border-radius: 5px;
        transition: all 0.3s ease;
      }
      .login-form input[type="text"]:focus,
      .login-form input[type="password"]:focus {
        border-color: #007bff;
        box-shadow: 0 0 10px rgba(0, 123, 255, 0.6);
      }
      .login-form button[type="submit"] {
        width: 100%;
        height: 50px;
        font-size: 18px;
        border-radius: 5px;
        background-color: #007bff;
        color: #fff;
        transition: all 0.3s ease;
      }
      .login-form button[type="submit"]:hover {
        background-color: #0056b3;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-6">
          <div class="login-form">
            <h2>Login</h2>
            <form id="loginForm">
              <div class="form-group">
                <input
                  type="text"
                  class="form-control"
                  id="username"
                  placeholder="Enter username"
                />
              </div>
              <div class="form-group">
                <input
                  type="password"
                  class="form-control"
                  id="password"
                  placeholder="Password"
                />
              </div>
              <button type="submit" class="btn btn-primary">Login</button>
            </form>
          </div>
        </div>
      </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
      $(document).ready(function () {
        // Handle login form submission
        $("#loginForm").submit(function (event) {
          event.preventDefault(); // Prevent the default form submission

          // Get the username and password entered by the user
          var username = $("#username").val();
          var password = $("#password").val();

          // Check if username is empty
          if (username === "") {
            alert("Username cannot be empty!");
            return;
          }

          // Check if password is 'admin'
          if (password !== "admin") {
            alert("Incorrect password!");
            return;
          }

          // Redirect to the admin page if username and password are correct
          window.location.href = "admin";
        });
      });
    </script>
  </body>
</html>
