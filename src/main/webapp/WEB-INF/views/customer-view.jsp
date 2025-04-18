<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Customer</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <div class="container">
        <h1>Customer Details</h1>
        <div class="customer-details">
            <div class="detail-group">
                <label>Name:</label>
                <span>${customer.name}</span>
            </div>
            
            <div class="detail-group">
                <label>Last Name:</label>
                <span>${customer.lastName}</span>
            </div>
            
            <div class="detail-group">
                <label>Phone Number:</label>
                <span>${customer.phoneNumber}</span>
            </div>
            
            <div class="detail-group">
                <label>Email:</label>
                <span>${customer.email}</span>
            </div>
            
            <div class="detail-group">
                <label>Address:</label>
                <span>${customer.address}</span>
            </div>
            
            <div class="actions">
                <a href="${pageContext.request.contextPath}/customers/edit?id=${customer.id}" class="button">Edit</a>
                <a href="${pageContext.request.contextPath}/customers" class="button">Back to List</a>
            </div>
        </div>
    </div>
</body>
</html>
