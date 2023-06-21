package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet( "/View/signFE_form")
public class accForEmployee extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// Lấy giá trị của tham số  từ yêu cầu
		String User = request.getParameter("User");
		String password = request.getParameter("password");	
		String Name = request.getParameter("Name");
		String Phone = request.getParameter("Phone");
		int Age = Integer.parseInt(request.getParameter("Age"));	
		String  CCCD = request.getParameter("CCCD");
		String Sex = request.getParameter("gender");
		boolean check = (Boolean) request.getSession().getAttribute("check");

		PreparedStatement stmt = null;
		PreparedStatement stmt1 = null;
		ResultSet rs = null;
		Connection conn = null;
		try {
			// Kết nối tới cơ sở dữ liệu
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=WEB_N10;user=sa;password=thanh1234;encrypt=true;trustServerCertificate=true;");
			String sql1 = "SELECT * FROM TKPR WHERE taikhoan = ?";
			stmt = conn.prepareStatement(sql1);
			stmt.setString(1, User);
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				 RequestDispatcher rd=request.getRequestDispatcher("/View/account.jsp");
				 request.setAttribute("msg", "Tên người dùng đã được sử dụng. Vui lòng chọn tên người dùng khác.");
	             rd.forward(request, response);		
			}else {
			String sql = "USE WEB_N10 "
					+ "INSERT INTO TKPR (taikhoan,matkhau) VALUES (?, ?)";
			stmt1 = conn.prepareStatement(sql);
			stmt1.setString(1, User);
			stmt1.setString(2, password);						
			stmt1.executeUpdate();
			String sql2 = "USE WEB_N10 "
					+ "INSERT INTO employee (Name,Phone,age,cccd,taikhoan,sex) VALUES (?, ?, ?, ?, ?, ?)";
			stmt1=conn.prepareStatement(sql2);
			stmt1.setString(1,Name);
			stmt1.setString(2,Phone);
			stmt1.setInt(3,Age);
			stmt1.setString(4,CCCD);
			stmt1.setString(5,User);
			stmt1.setString(6,Sex);
			stmt1.executeUpdate();
			if (check == false) {
			check = true;}
		    HttpSession session = request.getSession();
			session.setAttribute("check",check );
			request.getRequestDispatcher("/View/account.jsp").forward(request, response);
			}		
		} catch (Exception e) {
			// Xử lý lỗi
			e.printStackTrace();
			
			
			
		} 
		finally {
		    try { if (stmt != null) stmt.close(); } catch (Exception e) {};
		    try { if (conn != null) conn.close(); } catch (Exception e) {};
		
	}}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}}