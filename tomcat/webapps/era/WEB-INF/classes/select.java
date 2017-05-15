// Servlet Test.java  de test de la configuration
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.sql.*;


@WebServlet("/servlet/Lister")
public class select extends HttpServlet
{
	public void service( HttpServletRequest req, HttpServletResponse res ) 
			throws ServletException, IOException
	{
		PrintWriter out = res.getWriter();   
		res.setContentType( "text/html" );
		Connection con = null;
		Statement stmt;
		try{

			Class.forName("org.postgresql.Driver");  
			String url = "jdbc:postgresql://localhost:8080";
			String nom = "postgres";
			String mdp = "root";
			
			con = DriverManager.getConnection(url,nom,mdp);
			stmt = con.createStatement();
			String query = "select * from users;";
			ResultSet rs = stmt.executeQuery(query);
			
			out.println("<!doctype html>");
			out.println("<head><title>Table utilisateurs </title></head><body>");
			System.out.println("Liste des utilisateurs:");
			
			while(rs.next()){
				String n = rs.getString(1); // nom
				String p = rs.getString(2); // prenom
				
				System.out.println(n + " " + p);
			
			}
			
			out.println("</body></html> ");
		}
		catch(Exception e){
			out.println(e.getMessage());
		}
		finally {
			try {
				con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
}

