<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title></title>
</head>
<body>

<h2>users</h2>
<table>
    <tr>
        <th>id</th>
        <th>username</th>
        <th>password</th>
        <th>action</th>
    </tr>
    <c:forEach var="user" items="${userList}">
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.password}</td>
            <td>
                <a href="/admin/edit/${user.id}">edit</a>
                <a href="/admin/delete/${user.id}">delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

<h2>Add</h2>
<c:url value="/admin/add" var="add"/>
<a href="${add}">Add new user</a>
</body>
</html>