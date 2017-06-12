package services;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Tema;

public class STemas implements Logica {

	public void addTema(String titulo, String intro, String cont, Tema tema, int priv) {
		Logica.temas.add(new Tema(titulo, intro, cont, tema, priv));
	}

	public void editTema(int tema, String titulo, String intro, String cont, Tema temaPre, int priv) {
		Logica.temas.get(tema).setNomeTema(titulo);
		Logica.temas.get(tema).setDescricao(intro);
		Logica.temas.get(tema).setConteudo(cont);
		Logica.temas.get(tema).setPrec(temaPre);
		Logica.temas.get(tema).setRestricao(priv);
	}

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Tema tema;
		if (req.getParameter("acao").equals("addTema")) {

			if (req.getParameter("prec") == "") {
				tema = null;
			} else {
				tema = Logica.temas.get(Integer.parseInt(req.getParameter("prec")));
			}
			addTema(req.getParameter("titulo"), req.getParameter("intro"), req.getParameter("cont"), tema,
					Integer.parseInt(req.getParameter("rest")));
		} else if (req.getParameter("acao").equals("editTema")) {
			if (req.getParameter("editPrec").equals("sem")) {
				tema = null;
			} else {
				System.out.println("ola2");
				tema = Logica.temas.get(Integer.parseInt(req.getParameter("editPrec")));
			}
			
			System.out.println("TEMA: " + req.getParameter("listaTemas"));
			System.out.println("TITULO: " + req.getParameter("editTitulo"));
			System.out.println("CONTEUDO: " + req.getParameter("editCont"));
			System.out.println("INTRO: " + req.getParameter("editIntro"));
			System.out.println("RESTRICAO: " + req.getParameter("editRest"));
			
			editTema(Integer.parseInt(req.getParameter("listaTemas")),
					req.getParameter("editTitulo"),
					req.getParameter("editIntro"),
					req.getParameter("editCont"), tema,
					Integer.parseInt(req.getParameter("editRest")));
		}

		req.setAttribute("arrayTemas", Logica.temas);

		return "/index.jsp?pag=temas";
	}

}
