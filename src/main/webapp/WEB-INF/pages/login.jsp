<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
<div>
    <form method="post" action="/login">
        <div>
            <input name="j_username" type="text" placeholder="Username"
                   autofocus="true"/>
            <input name="j_password" type="password" placeholder="Password"/>
            <button type="submit">Log In</button>
        </div>
    </form>
</div>

</body>
</html>