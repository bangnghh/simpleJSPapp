
import com.practice.bean.UserBean;
import com.practice.dao.ConnectionUtils;
import com.practice.dao.UserAccess;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Bang
 */
public class NewClass {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Connection conn = ConnectionUtils.getConnection();
        List<UserBean> list = null;
        list = UserAccess.queryUser(conn);
        for(int i = 0; i < list.size(); i++){
            System.out.println(list.get(i).getUsername());
            System.out.println(list.get(i).getPassword());
        }
    }
}
