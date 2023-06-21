package Controller;





import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/View/logout")
public class logout extends HttpServlet {
	
	

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		 request.getSession().invalidate();

	        // Thiết lập các trường header của phản hồi HTTP để ngăn chặn trình duyệt lưu trữ bản sao của trang trước đó
	       
	        Cookie arr[] = request.getCookies();
	        if( arr != null) {
				for(Cookie o : arr) {
					if(o.getName().equals("User")) {
						 o.setMaxAge(0);
		                 response.addCookie(o);
					}
					if(o.getName().equals("password")) {
						o.setMaxAge(0);
		                 response.addCookie(o);
					}
					
				}
			}


	        // Chuyển hướng người dùng đến trang đăng nhập
	        response.sendRedirect("login_form");

		
		
		 }

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
		
	}}



	
		