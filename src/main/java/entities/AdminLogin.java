package entities;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.DAO;



@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		try {
			DAO dao=new DAO();
			
			if(dao.checkAdmin(email,password)) {
				System.out.println("login success at admin login");
				List<String> MasterFlights=dao.masterflightlist();	
				for(String f:MasterFlights)
				{
					System.out.println(f);
				}
				HttpSession session=request.getSession();
				session.setAttribute("MasterFlights", MasterFlights);
				response.sendRedirect("AdminHome.jsp");
			}
			else {
				HttpSession session=request.getSession();
				session.setAttribute("message", "Invalid Details");
				response.sendRedirect("AdminLogin.jsp");
			}	
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}