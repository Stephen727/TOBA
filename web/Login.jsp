<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:import url="/Includes/Header.html" />

    <body> <br><br><br>
    <center><h1>Login</h1></center>
    <br><br>
       <form action="LoginServlet">
           <table align = "center">
               <tr>
                   <th align="right">Username:</th> 
                   <td><input type="text" name="uname"></td>
               </tr>
               <tr>
                   <th align="right">Password:</th> 
                   <td><input type="password" name="pass"></td>
               </tr>
               <tr>
                   <td colspan="2" align="right">
                       <input type="submit" value="Login">
                   </td>
             </tr>
          </table>
       </form>
    
    <nav>
        <ul>
            <li><a href="/New_customer.jsp">New Customer Sign Up</a></li>
            <li><a href="/Reset_password.jsp">Reset Password</a></li>
        </ul>
    </nav>
<c:import url="/Includes/Footer.jsp" />