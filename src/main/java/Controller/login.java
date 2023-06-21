package Controller;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/View/login_form")
public class login extends HttpServlet {
	
	

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// Lấy giá trị của tham số name và age từ yêu cầu
		String User = request.getParameter("User");
		String pass = request.getParameter("password");	
	
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs =null;
		Cookie arr[] = request.getCookies();
		
		if( arr != null) {
			for(Cookie o : arr) {
				if(o.getName().equals("User") ) {
					if(o.getValue().equals("admin")) {
						response.sendRedirect("postU");
						}else {
							response.sendRedirect("post");
						}
					
				}
				
				
			}
		}
	
		
		try {
			// Kết nối tới cơ sở dữ liệu
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=WEB_N10;user=sa;password=thanh1234;encrypt=true;trustServerCertificate=true;");
		
			 String sql1 = "select * from Admin where Admin = ? and Password = ?";
             stmt = conn.prepareStatement(sql1);
           
             stmt.setString(1, User);
             stmt.setString(2, pass);
             rs = stmt.executeQuery();
             if(rs.next()) {
            	 Cookie user = new Cookie("User", User);
            	 user.setMaxAge(60*60);
            	 response.addCookie(user);
            	 response.sendRedirect("postU");
             }
             sql1 = "select * from TKPR where taikhoan = ? and matkhau = ?";
             stmt = conn.prepareStatement(sql1);           
             stmt.setString(1, User);
             stmt.setString(2, pass);
             rs = stmt.executeQuery();
            
           
        		
        		
             if (rs.next()) {
            	Cookie user = new Cookie("User", User);
            	Cookie passc = new Cookie("password", pass);
            	user.setMaxAge(60*60);
            	passc.setMaxAge(60*60);
            	response.addCookie(user);
            	response.addCookie(passc);
            	response.sendRedirect("post");
            } else if(pass == null && User == null){
            	request.getRequestDispatcher("login.jsp").forward(request, response);
            }else {        	  
                  request.setAttribute("msg", "Vui lòng nhập đúng tài khoản và mật khẩu");
                  request.setAttribute("user",User);
                  request.getRequestDispatcher("login.jsp").forward(request, response);           
            }

            rs.close();
            stmt.close();
            conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		finally {
		    try { if (stmt != null) stmt.close(); } catch (Exception e) {};
		    try { if (conn != null) conn.close(); } catch (Exception e) {};}}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
		
	}}



	
		