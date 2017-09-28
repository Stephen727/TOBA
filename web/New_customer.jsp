<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:import url="/Includes/Header.html" />
<br><br><br>
    <center><h1>Sign Up</h1></center>
    <br><br>
       <form action="NewCustomerServlet">
           <table align = "center">
               <tr>
                   <th align="right">First Name:</th> 
                   <td><input type="text" name="firstname"></td>
               </tr>
               <tr>
                   <th align="right">Last Name:</th> 
                   <td><input type="text" name="lastname"></td>
               </tr>
               <tr>
                   <th align="right">Phone:</th> 
                   <td><input type="text" name="phone"></td>
               </tr>
               <tr>
                   <th align="right">Address:</th> 
                   <td><input type="text" name="address"></td>
               </tr>
               <tr>
                   <th align="right">City:</th> 
                   <td><input type="text" name="city"></td>
               </tr>
               <tr>
                   <th align="right">State:</th> 
                   <td><input type="text" name="state"></td>
               </tr>
               <tr>
                   <th align="right">Zipcode:</th> 
                   <td><input type="text" name="zipcode"></td>
               </tr>
               <tr>
                   <th align="right">Email:</th> 
                   <td><input type="text" name="email"></td>
               </tr>
               <tr>
                   <td colspan="2" align="right">
                       <input type="submit" value="Create">
                   </td>
             </tr>
          </table>
       </form>
    <center><p>${message}</p></center>
<c:import url="/Includes/Footer.jsp" />