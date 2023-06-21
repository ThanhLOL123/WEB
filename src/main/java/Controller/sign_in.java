package Controller;
import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns ="/View/signin")
public class sign_in extends HttpServlet {
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// Lấy giá trị của tham số  từ yêu cầu
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		int age = Integer.parseInt(request.getParameter("age"));
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String target = request.getParameter("target");
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=WEB_N10;user=sa;password=thanh1234;encrypt=true;trustServerCertificate=true;");
			String sql = "USE WEB_N10 "
					+ "INSERT INTO custormer (first_name, last_name,age,email,phone,target) VALUES (?, ?, ?, ?, ?, ?)";
			
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, first_name);
			stmt.setString(2, last_name);
			stmt.setInt(3, age);
			stmt.setString(4, email);
			stmt.setString(5, phone);
			stmt.setString(6, target);
			stmt.executeUpdate();
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} catch (Exception e) {
			// Xử lý lỗi
			e.printStackTrace();
			
			
			
		} 
		finally {
		    try { if (stmt != null) stmt.close(); } catch (Exception e) {};
		    try { if (conn != null) conn.close(); } catch (Exception e) {};
		
	}
		
		}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}}