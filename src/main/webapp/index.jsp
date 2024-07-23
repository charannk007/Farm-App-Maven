<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login & Signup</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f7f7f7;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
            padding: 20px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        input[type="text"], input[type="password"], input[type="email"] {
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        input[type="submit"] {
            background: #5cb85c;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            border-radius: 4px;
            margin-top: 20px;
        }
        input[type="submit"]:hover {
            background: #4cae4c;
        }
        .toggle-button {
            text-align: center;
            margin-top: 20px;
            color: #5cb85c;
            cursor: pointer;
        }
        .toggle-button:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        function toggleForm() {
            var loginForm = document.getElementById('loginForm');
            var signupForm = document.getElementById('signupForm');
            if (loginForm.style.display === 'none') {
                loginForm.style.display = 'block';
                signupForm.style.display = 'none';
            } else {
                loginForm.style.display = 'none';
                signupForm.style.display = 'block';
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <div id="loginForm">
            <h2>Login</h2>
            <form action="loginServlet" method="post">
                <input type="text" name="username" placeholder="Username" required>
                <input type="password" name="password" placeholder="Password" required>
                <input type="submit" value="Login">
            </form>
            <div class="toggle-button" onclick="toggleForm()">Don't have an account? Sign up</div>
        </div>
        <div id="signupForm" style="display: none;">
            <h2>Sign Up</h2>
            <form action="signupServlet" method="post">
                <input type="text" name="username" placeholder="Username" required>
                <input type="email" name="email" placeholder="Email" required>
                <input type="password" name="password" placeholder="Password" required>
                <input type="password" name="confirmPassword" placeholder="Confirm Password" required>
                <input type="radio"> Remember Password
		<input type="submit" value="Sign Up">
            </form>
            <div class="toggle-button" onclick="toggleForm()">Already have an account? Login</div>
        </div>
    </div>
</body>
</html>
