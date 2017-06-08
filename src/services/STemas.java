package services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Tema;

public class STemas implements Logica {

	public void addTema(String titulo,String intro, String cont, Tema tema,int priv) {
		Logica.temas.add(new Tema(titulo,intro, cont, tema, priv));
		System.out.println("INserido: " + Logica.temas.get(Logica.temas.size()-1).toString());
	}

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getParameter("acao").equals("addTema")) {
			Tema tema;
			if (req.getParameter("prec") == "") {
				tema = null;
			} else {
				tema = Logica.temas.get(Integer.parseInt(req.getParameter("prec")));
			}
			addTema(req.getParameter("titulo"), req.getParameter("intro"), req.getParameter("cont"), tema,
					Integer.parseInt(req.getParameter("rest")));
		}
		
		req.setAttribute("arrayTemas", Logica.temas);
		
		return "/index.jsp?pag=temas";
	}

}
