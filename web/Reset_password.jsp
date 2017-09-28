<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:import url="/Includes/Header.html" />

<center><h1>Reset Password</h1> </center>
<br><br>
       <form action="ResetPasswordServlet">
           <table align = "center">
               <tr>
                   <th align="right">Email:</th> 
                   <td><input type="text" name="email"></td>
               </tr>
               <tr>
                   <th align="right">Password:</th> 
                   <td><input type="password" name="pass"></td>
               </tr>
               <tr>
                   <td colspan="2" align="right">
                       <input type="submit" value="Submit">
                   </td>
             </tr>
          </table>
       </form>
        
<c:import url="/Includes/Footer.jsp" />