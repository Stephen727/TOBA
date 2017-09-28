<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/Includes/Header.html" />
    <div>Your account has been successfully created!</div>
        <table>
            <tr>
                <th>First Name:</th>
                <td>${user.firstname}</td>
            </tr>
            <tr>
                <th>Last Name:</th>
                <td>${user.lastname}</td>
            </tr>
            <tr>
                <th>Phone:</th>
                <td>${user.phone}</td>
            </tr>
            <tr>
                <th>Address:</th>
                <td>${user.address}</td>
            </tr>
            <tr>
                <th>City:</th>
                <td>${user.city}</td>
            </tr>
            <tr>
                <th>State:</th>
                <td>${user.state}</td>
            </tr>
            <tr>
                <th>Zip Code:</th>
                <td>${user.zipcode}</td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>${user.email}</td>
            </tr>
            <tr>
                <th>Username:</th>
                <td>${user.username}</td>
            </tr>
            <tr>
                <th>Password:</th>
                <td>${user.password}</td>
            </tr>
        </table>
<c:import url="/Includes/Footer.jsp" />