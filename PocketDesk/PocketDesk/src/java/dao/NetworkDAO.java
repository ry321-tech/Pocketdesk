
package dao;
import java.sql.*;
import dto.Network;

public class NetworkDAO {
 Connection con;
PreparedStatement pst;
ResultSet rs;

public boolean createNetwork(Network ob)
{
 {
    boolean valid = false;
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
            
    con = DriverManager.getConnection
("jdbc:mysql://localhost:3306/pocketdesk"
            ,"root","root");
    
    pst = con.prepareStatement(
"INSERT INTO network_master"
		+ "(network_name, url) VALUES"
+ "(?,?)" );
    
    pst.setString(1,ob.getNetwork_name());
    pst.setString(2,ob.getUrl());
   
    
    int count=pst.executeUpdate();
            
    if (count>0)
        valid=true;
    
    con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return valid;
}   
}
}

