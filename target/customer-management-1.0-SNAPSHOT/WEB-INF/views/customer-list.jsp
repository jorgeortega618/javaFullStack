<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Management</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <div class="container">
        <h1>Customer List</h1>
        <div class="add-button">
            <a href="${pageContext.request.contextPath}/customers/new" class="button">Add New Customer</a>
        </div>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Last Name</th>
                    <th>Phone Number</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="customer" items="${customers}">
                    <tr>
                        <td>${customer.name}</td>
                        <td>${customer.lastName}</td>
                        <td>${customer.phoneNumber}</td>
                        <td>${customer.email}</td>
                        <td>${customer.address}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/customers/edit?id=${customer.id}" class="button edit">Edit</a>
                            <a href="${pageContext.request.contextPath}/customers/view?id=${customer.id}" class="button view">View</a>
                            <form action="${pageContext.request.contextPath}/customers/delete" method="post" style="display:inline;">
                                <input type="hidden" name="id" value="${customer.id}">
                                <button type="submit" class="button delete" onclick="return confirm('Are you sure?')">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
