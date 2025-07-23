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
import javax.servlet.http.HttpSession;

@WebServlet("/add-books")
public class AddBookServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int bookId = Integer.parseInt(req.getParameter("bookId"));
		String bookName = req.getParameter("bookName");
		String bookAuthor = req.getParameter("bookAuthor");
		int bookQuantity = Integer.parseInt(req.getParameter("bookQuantity"));

		//		JDBC
		Connection conn = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms_project_db", "root", "root");

			PreparedStatement pst = conn.prepareStatement("Insert into librarymanagementsystem values(?,?,?,?)");
			pst.setInt(1, bookId);
			pst.setString(2, bookName);
			pst.setString(3, bookAuthor);
			pst.setInt(4, bookQuantity);

			pst.execute();

			resp.sendRedirect("admin.jsp");

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
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
