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
@WebServlet("/View/delete")
public class Delete extends HttpServlet{

	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub\
		int id = Integer.parseInt(req.getParameter("key"));
		String sql = "DELETE FROM custormer WHERE ID = ?;";
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
			// Kết nối tới cơ sở dữ liệu
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=WEB_N10;user=sa;password=thanh1234;encrypt=true;trustServerCertificate=true;");
			
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id);					
			stmt.executeUpdate();
			resp.sendRedirect("postU");
		} catch (Exception e) {
			// Xử lý lỗi
			e.printStackTrace();
			
			
			
		} 
		finally {
		    try { if (stmt != null) stmt.close(); } catch (Exception e) {};
		    try { if (conn != null) conn.close(); } catch (Exception e) {};
		
	}}
	

	

}
