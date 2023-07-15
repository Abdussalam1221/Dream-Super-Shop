<!DOCTYPE html>
<html>

<head>
    <title>Your Website</title>
    <style>
        /* CSS for header section */
        .header {
            background-color: #f1f1f1;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            display: flex;
            align-items: center;
        }

        .logo img {
            height: 50px;
            width: 50px;
            margin-right: 10px;
        }

        .navigation {
            display: flex;
        }

        .navigation ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        .navigation li {
            margin-left: 10px;
        }

        .navigation a {
            text-decoration: none;
            color: black;
        }

        .login-btn,
        .register-btn {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .register-btn {
            margin-left: 10px;
        }
    </style>
</head>

<body>
    <header class="header">
        <div class="logo">
            <img src="logo.png" alt="Logo">
        </div>
        <nav class="navigation">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
        <div class="user-actions">
            <a href="login.html" class="login-btn">Login</a>
            <a href="register.html" class="register-btn">Register</a>
        </div>
    </header>

    <!-- Rest of your website content goes here -->

</body>
</html>