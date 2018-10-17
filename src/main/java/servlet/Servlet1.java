package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet1")
public class Servlet1 extends HttpServlet{
	
	private static final long serialVersionUID = 1698012193951625993L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
	    PrintWriter out = res.getWriter();
	    Date date = new Date();

	    out.println("Hello, world from the Servlet 1 ! " + date);
	    out.close();
	}

}
