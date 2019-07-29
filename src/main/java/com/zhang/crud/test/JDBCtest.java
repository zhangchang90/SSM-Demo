package com.zhang.crud.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCtest {

	public static void main(String[] args) throws SQLException {
		/* String url = "jdbc:mysql:localhost:3306/ssm_crud?serverTimezone=UTC"; */
        String url = "jdbc:mysql://localhost:3306/ssm_crud?serverTimezone=UTC";
        String username = "root";
        String password = "zhangchang";
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	} catch (ClassNotFoundException e) {
        	e.printStackTrace();
        	}
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        Connection conn = DriverManager.getConnection(url, username, password);
        
        Statement st = conn.createStatement();
      //4.向数据库发sql,并获取代表结果集的resultset
        String sql = "select emp_id  from tbl_emp";
        ResultSet rs = st.executeQuery(sql);
        //5.取出结果集的数据
        while(rs.next()){
            System.out.println("id=" + rs.getObject("emp_id"));
            
        }
        
        //6.关闭链接，释放资源
        rs.close();
        st.close();
        conn.close();

	}

}
