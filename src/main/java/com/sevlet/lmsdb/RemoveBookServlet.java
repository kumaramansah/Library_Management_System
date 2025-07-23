package com.sevlet.lmsdb;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/remove-book")
public class RemoveBookServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int bookId=Integer.parseInt(req.getParameter("bookId"));

		//		JDBC
		Connection conn=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms_project_db", "root", "root");

			PreparedStatement pst = conn.prepareStatement("Delete from librarymanagementsystem where bookId=(?)");
			pst.setInt(1, bookId);

			pst.execute();

//			resp.sendRedirect("display-books");
			resp.sendRedirect("index.jsp");
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}





		}
	}
}