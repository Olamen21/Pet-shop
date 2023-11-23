package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import entity.Category;

/**
 * Servlet implementation class AddPet
 */
@WebServlet("/addPet")
public class AddPet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddPet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pname = request.getParameter("pname");
		String pcat = request.getParameter("pcat");
		String pqty = request.getParameter("pqty");
		String price = request.getParameter("price");
		DAO dao = new DAO();
		dao.insertPet(pname, pcat, pqty, price);
		response.sendRedirect("homePet");
	}

}
