<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Form</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <div class="container">
        <h1>${customer != null ? 'Edit Customer' : 'Add New Customer'}</h1>
        <form action="${pageContext.request.contextPath}/customers${customer != null ? '/update' : '/add'}" method="post">
            <c:if test="${customer != null}">
                <input type="hidden" name="id" value="${customer.id}">
            </c:if>
            
            <div class="form-group">
                <label>Name:</label>
                <input type="text" name="name" value="${customer.name}" required>
            </div>

            <div class="form-group">
                <label>Last Name:</label>
                <input type="text" name="lastName" value="${customer.lastName}" required>
            </div>

            <div class="form-group">
                <label>Phone Number:</label>
                <input type="tel" name="phoneNumber" value="${customer.phoneNumber}" required>
            </div>

            <div class="form-group">
                <label>Email:</label>
                <input type="email" name="email" value="${customer.email}" required>
            </div>

            <div class="form-group">
                <label>Address:</label>
                <textarea name="address" required>${customer.address}</textarea>
            </div>

            <div class="form-group">
                <button type="submit" class="button">Save</button>
                <a href="${pageContext.request.contextPath}/customers" class="button">Cancel</a>
            </div>
        </form>
    </div>
</body>
</html>
