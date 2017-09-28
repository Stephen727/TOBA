import java.sql.*;

public class UserDB {
    public static int insert(User user) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query =
                "INSERT INTO user (Firstname, Lastname, Phone, Address, City, State, Zipcode, Email, Username, Password) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getFirstname());
            ps.setString(2, user.getLastname());
            ps.setString(3, user.getPhone());
            ps.setString(4, user.getAddress());
            ps.setString(5, user.getCity());
            ps.setString(6, user.getState());
            ps.setString(7, user.getZipcode());
            ps.setString(8, user.getEmail());
            ps.setString(9, user.getUsername());
            ps.setString(10, user.getPassword());
            return ps.executeUpdate();
        }
        catch (SQLException e) {
            System.err.println(e);
            return 0;
        }
        finally {
            try { if (ps != null) ps.close(); } catch (SQLException e) {System.err.println(e);};
            pool.freeConnection(connection);
        }
    }
    
    public static int resetPassword(String email, String password) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        
        String query = "UPDATE user SET " +
                "Password = ?" +
                "WHERE Email = ?";
        
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, password);
            ps.setString(2, email);
            
            return ps.executeUpdate();
        }
        catch (SQLException e) {
            System.err.println(e);
            return 0;
        }
        finally {
            try { if (ps != null) ps.close(); } catch (SQLException e) {System.err.println(e);};
            pool.freeConnection(connection);
        }
    }
    
    public static User selectUser (String username, String password) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        String query = "SELECT * FROM user " +
                "WHERE Username = ? AND Password = ?";
        
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            User user = null;
            if(rs.next()) {
                user = new User();
                user.setFirstname(rs.getString("Firstname"));
                user.setLastname(rs.getString("Lastname"));
                user.setPhone(rs.getString("Phone"));
                user.setAddress(rs.getString("Address"));
                user.setCity(rs.getString("City"));
                user.setZipcode(rs.getString("Zipcode"));
                user.setEmail(rs.getString("Email"));
                user.setUsername(rs.getString("Username"));
                user.setPassword(rs.getString("Password"));
            }
            return user;
        }
        catch (SQLException e) {
            System.err.println(e);
            return null;
        }
        finally {
            try { if (rs != null) rs.close(); } catch (SQLException e) {System.err.println(e);};
            try { if (ps != null) ps.close(); } catch (SQLException e) {System.err.println(e);};
            pool.freeConnection(connection);
        }
    }
}
