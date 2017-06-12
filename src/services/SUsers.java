package services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SUsers implements Logica{

	public boolean verifLog(String mail, String pass){
			return true;
	}
	
	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		if (req.getParameter("acao").equals("login")) {
			if(verifLog(req.getParameter("mail"), req.getParameter("pass")) == true){
				req.getSession().setAttribute("log", "1");
			}
		} else if (req.getParameter("acao").equals("logout")) {
			req.getSession().invalidate();
		}
		
		req.setAttribute("arrayTemas", Logica.temas);
		
		return "/index.jsp";
		
		//ola
	}

}
