
package dao;

import java.sql.*;
import dto.User;
public class UserDAO {
Connection con;
PreparedStatement pst;
ResultSet rs;

public boolean Register(User ob)
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
"INSERT INTO users_master"
+ "(user_id, user_name, password, user_gender, contact_no, url_img, verified) VALUES"
+ "(?,?,?,?,?,?,?)" );
    
    pst.setString(1,ob.getUser_id());
    pst.setString(2,ob.getUser_name());
    pst.setString(3,ob.getPassword());
    pst.setString(4,ob.getUser_gender());
    pst.setString(5,ob.getContact_no());
    pst.setString(6,ob.getUrl_img());
    pst.setBoolean(7,ob.isVerified());
    
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


public boolean checkUser(User ob)
{
    boolean valid = false;
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
            
    con = DriverManager.getConnection
("jdbc:mysql://localhost:3306/pocketdesk"
            ,"root","root");
    
    pst = con.prepareStatement(
"select * from users_master where user_id = ? and"
                    + " password = ? and verified = true");
    
    pst.setString(1,ob.getUser_id());
    pst.setString(2,ob.getPassword());
    
    rs = pst.executeQuery();
            
    if(rs.isBeforeFirst())
        valid = true;
    
    con.close();
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    
    return valid;
}
}
