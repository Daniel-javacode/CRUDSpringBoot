<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <c:if test="${empty user.username}">
        <title>Add</title>
    </c:if>
    <c:if test="${!empty user.username}">
        <title>Edit</title>
    </c:if>
</head>
<body>
<c:if test="${empty user.username}">
    <c:url value="/admin/add" var="var"/>
</c:if>
<c:if test="${!empty user.username}">
    <c:url value="/admin/edit" var="var"/>
</c:if>
<form action="${var}" method="POST">
    <c:if test="${!empty user.username}">
        <input type="hidden" name="id" value="${user.id}">
    </c:if>
    <label for="username">username</label>
    <input type="text" name="username" id="username">
    <label for="password">password</label>
    <input type="text" name="password" id="password">
    <c:if test="${empty user.username}">
        <input type="submit" value="Add new user">
    </c:if>
    <c:if test="${!empty user.username}">
        <input type="submit" value="Edit user">
    </c:if>
</form>
</body>
</html>