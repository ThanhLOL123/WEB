package Controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Model.Employee;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/View/postE")
public class postE extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // Retrieve spreadsheet data from database
	    Connection conn = null;
	   
	    
	    try {
	    	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=WEB_N10;user=sa;password=thanh1234;encrypt=true;trustServerCertificate=true;");

	        String sql = "select * from employee";
	        PreparedStatement stmt1 =  conn.prepareStatement(sql);	         
	        ResultSet rs =  stmt1.executeQuery();
	        ArrayList<Employee> list = new ArrayList<>();
	        while (rs.next()) {
	             String name = rs.getString("Name");
	             String phone = rs.getString("Phone");
	             int age = rs.getInt("age");
	             String cccd = rs.getString("cccd");
	             String taikhoan = rs.getString("taikhoan");
	             String sex = rs.getString("sex");
	             Employee nv = new Employee(name,phone,age,cccd,taikhoan,sex);
	             list.add(nv);
	         }
	    
	         request.setAttribute("list",list);
             request.getRequestDispatcher("employee.jsp").forward(request, response);
	         rs.close();	       
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    }

	

}
