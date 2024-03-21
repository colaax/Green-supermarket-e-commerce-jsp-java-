<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" href="css/signup-style.css">
  <style>
    body {
    
      background-color: #3CBC8D;
      font: 1em Helvetica;
     
      
    }

    #container {
     
      width: 840px;
      margin: 25px auto;
      margin-top: 50px;
    }

    .whysign {
      float: left;
      background-color: #fff;
      width: 480px;
      height: 528px;
      border-radius: 0 5px 5px 0;
      padding-top: 20px;
      padding-right: 20px;
    }

    .signup {
      float: left;
      width: 300px;
      padding: 30px 20px;
      background-color: #fff;
      text-align: center;
      border-radius: 5px 0 0 5px;
    }

    [type=text],
    [type=email],
    [type=number],
    [type=password],
    select,
    option {
      display: block;
      margin: 0 auto;
      width: 80%;
      border: 0;
      border-bottom: 1px solid rgba(0, 0, 0, .2);
      height: 45px;
      line-height: 45px;
      margin-bottom: 10px;
      font-size: 1em;
      color: #3CBC8D;
    }

    [type=submit] {
      margin-top: 25px;
      width: 80%;
      border: 0;
      background-color: #3CBC8D;
      border-radius: 5px;
      height: 50px;
      color: #fff;
      font-weight: 400;
      font-size: 1em;
    }

    [type='text']:focus {
      outline: none;
      border-color: #53CACE;
    }

    h1 {
      color: #3CBC8D;
      font-weight: 900;
      font-size: 2.5em;
    }

    p {
      color: rgba(0, 0, 0, .6);
      font-size: 1.2em;
      margin: 50px 0 50px 0;
    }

    h2 {
      color: #3CBC8D;
    }

    a {
      color: #3CBC8D;
    }

    a:hover {
      color: #53CACE;
    }

    span {
      font-size: .75em;
      background-color: #fff;
      padding: 2px 5px;
      color: rgba(0, 0, 0, .6);
      border-radius: 2px;
      box-shadow: 1px 1px 1px rgba(0, 0, 0, .3);
      margin: 5px;
    }

    span:hover {
      color: #53CACE;
    }

    p:nth-of-type(2) {
      font-size: 1em;
    }
  </style>
  <title>Signup</title>
</head>

<body>
  <div id='container'>
    <div class='signup'>
      <form action="signupAction.jsp" method="post">
        <input type="text" name="name" placeholder="Enter Your name" required>
        <input type="email" name="email" placeholder="Enter Your Email" required>
        <input type="number" name="mobilenumber" placeholder="Enter Your Mobile Number" required>
        <select name="securityQuestion" required>
          <option value="What was your first car?">What was your first car?</option>
          <option value="What is the name of your first pet?">What is the name of your first pet?</option>
          <option value="What elementary school did you attend?">What elementary school did you attend?</option>
          <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
        </select>
        <input type="text" name="answer" placeholder="Enter Answer" required>
        <input type="password" name="password" placeholder="Enter Password" required>
        <input type="submit" value="signup">
      </form>
      <h2><a href="login.jsp">Login</a></h2>
    </div>
    <div class='whysign'>
      <% String msg = request.getParameter("msg"); if ("valid".equals(msg)) { %>
      <h1>Successfully Registered !</h1>
      <%} %>
      <% if ("invalid".equals(msg)) { %>
      <h1>Something Went Wrong! Try Again !</h1>
      <%} %>
      <h2>Green Supermarket</h2>
      <p>"Join the Green Revolution: Elevate Your Shopping Experience with GREEN Supermarket's Modernized Website ! Sign Up Today for a Seamless Journey into Fresh and Sustainable Living!"</p>
    </div>
  </div>
</body>

</html>
