<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmation</title>
    <style>
        body{
            background-color: #B2BEC3;
            text-decoration: none;
        }
        .dialogBox{
            background-color: #FFFFFF;
            text-align: center;
            align-items: center;
            width: 400px;
            height: 185px;
            padding: 30px;
            top: 50%;
            left: 50%;
            position: absolute;
            transform: translate(-50%, -50%);
            border-radius: 12px;
        }
        p{
            font-size: 30px;
            font-family:system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            /* color: #5C5C5C; */
            color: #636e72;
            margin: 0px 10px 25px 0;
        }
        button{
            background-color: #7f8c8d;
            padding: 10px 25px;
            margin: 10px 20px;
            border-radius: 8px;
            border: 1px solid #FFFFFF;
        }
        button:hover{
            background-color: #bdc3c7;
            color: #7f8c8d;
        }
        a{
            text-decoration: none;
            font-size: 20px;
            color: #ffffff;
        }
    </style>
</head>
<body>
    <div class="dialogBox">
        <p>Are you sure, <br>you want to log out?</p>
        <button><a href="home.php">Cancel</a></button>
        <button><a href="logout.php">Log Out</a></button>
    </div>
</body>
</html>