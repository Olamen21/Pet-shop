package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import entity.Category;

/**
 * Servlet implementation class UpdateCat
 */
@WebServlet("/updateCat")
public class UpdateCat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCat() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("cid");
		DAO dao = new DAO();
		Category c = dao.getCatById(id);
		request.setAttribute("c", c);
		request.getRequestDispatcher("UpdateCat.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("cid");
		String uname = request.getParameter("cname");
		DAO dao = new DAO();
		dao.updateCat(uid, uname);
		response.sendRedirect("homeCategory");
	}

}
