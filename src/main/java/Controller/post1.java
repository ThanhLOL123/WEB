package Controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/View/postU")
public class post1 extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // Retrieve spreadsheet data from database
	    Connection conn = null;
	    PreparedStatement stmt =null;
	    ResultSet rs1= null;

	    
	    try {
	    	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=WEB_N10;user=sa;password=thanh1234;encrypt=true;trustServerCertificate=true;");
			 response.setContentType("text/html");
	         PrintWriter out = response.getWriter();
	         String sql = "select * from custormer;";
	         PreparedStatement stmt1 =  conn.prepareStatement(sql);	         
	         ResultSet rs =  stmt1.executeQuery();
	         ArrayList<User> list = new ArrayList<>();
	         int number = 0;
	       
	         while (rs.next()) {

	             String fName = rs.getString("first_name");
	             String LName = rs.getString("last_name"); 
	             int age = rs.getInt("age");
	             String email = rs.getString("email");
	             String phone = rs.getString("phone");
	             String target = rs.getString("target");
	             int id = rs.getInt("ID");
	             User user = new User(fName,LName,age,email,phone,target,id);
	             list.add(user);
	             number +=1;
	         }
	         String sql1 = "select * from employee";
	         stmt =  conn.prepareStatement(sql1);	         
	         rs1 =  stmt.executeQuery();
	        int numberE = 0;
	        while (rs1.next()) {           
	             numberE += 1;
	         }
	         request.setAttribute("numberE", numberE);
	         request.setAttribute("number", number);
	         request.setAttribute("listUser",list);
             request.getRequestDispatcher("admin.jsp").forward(request, response);
	         rs.close();	       
	         out.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    }
	

}
