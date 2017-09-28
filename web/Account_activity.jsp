<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:import url="/Includes/Header.html" />
        <h1>Account Activity</h1>
        
        <c:if test="${user != null}">
            <p> Welcome ${user.firstname} ${user.lastname} </p>
        </c:if>
        <c:if test="${user == null}">
            <p> Not Logged In </p>
        </c:if>
            
<c:import url="/Includes/Footer.jsp" />