package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import services.Logica;

/**
 * Servlet implementation class HandlerIndex
 */
@WebServlet("/Handler")
public class Handler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Handler() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("arrayTemas", Logica.temas);
		
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String parametro = request.getParameter("logica"); //Recebe como parametro do jsp, qual a class do service que ir� atuar
	    String nomeDaClasse = "services." + parametro; //Nome da Classe
	    
	    try {
	      Class<?> classe = Class.forName(nomeDaClasse);
	      Logica logica = (Logica) classe.newInstance();
	      
	      String pagina = logica.executa(request, response);
	      request.getRequestDispatcher(pagina).forward(request, response);

	    } catch (Exception e) {
	      throw new ServletException(
	          "A l�gica causou uma exce��o", e);
	    }
		
	}

}
