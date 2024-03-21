<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" href="css/signup-style.css">
  <style>
    body {
      background-color: #f4f4f4; /* Light gray background */
      font: 1em Helvetica;
      background-image: url('a.jpg'); /* Add your background image URL here */
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      margin: 0; /* Remove default margin */
      padding: 0; /* Remove default padding */
    }

    #container {
      width: 840px;
      margin: 50px auto;
      text-align: center;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .signup {
      background-color: #fff;
      width: 300px;
      padding: 30px;
      border-radius: 5px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }

    .whysignLogin {
      margin-left: 20px;
      background-color: #fff;
      width: 480px;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }

    [type=email],
    [type=password],
    [type=submit] {
      display: block;
      width: 100%;
      border: 1px solid #ccc; /* Light gray border */
      border-radius: 5px;
      height: 40px;
      line-height: 40px;
      margin-bottom: 15px;
      font-size: 1em;
      color: #555; /* Dark gray text color */
      padding: 0 10px;
      box-sizing: border-box;
    }

    [type=submit] {
      background-color: #3CBC8D;
      color: #fff;
      font-weight: 400;
      font-size: 1em;
    }

    [type='email']:focus,
    [type='password']:focus {
      outline: none;
      border-color: #53CACE;
    }

    h1 {
      color: #333; /* Dark gray heading color */
      font-weight: 900;
      font-size: 2.5em;
    }

    h2 {
      color: #3CBC8D;
    }

    a {
      color: #3CBC8D;
      text-decoration: none;
    }

    a:hover {
      color: #53CACE;
    }

    p {
      color: #777; /* Medium gray text color */
      font-size: 1.2em;
      margin: 20px 0;
    }

    p:nth-of-type(2) {
      font-size: 1em;
    }
  </style>
  <title>Login</title>
</head>

<body>
  <div id='container'>
    <div class='signup'>
      <form action="loginAction.jsp" method="post">
        <h1>Login</h1>
        <input type="email" name="email" placeholder="Enter email" required>
        <input type="password" name="password" placeholder="Enter password" required>
        <input type="submit" value="Login">
      </form>
      <p><a href="signup.jsp">Sign Up</a></p>
      <p><a href="forgotPassword.jsp">Forgot Password?</a></p>
    </div>
    <div class='whysignLogin'>
      <% String msg = request.getParameter("msg"); if ("notexist".equals(msg)) { %>
      <h2>Incorrect Username or Password</h2>
      <%} %>
      <%if("invalid".equals(msg)) {%>
      <h2>Something Went Wrong! Try Again !</h2>
      <%} %>
      <h1>Welcome to Green Supermarket</h1>
      <p>"Join the Green Revolution: Elevate Your Shopping Experience with GREEN Supermarket's Modernized Website ! "</p>
    </div>
  </div>
</body>

</html>
