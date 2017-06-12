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

	public void elimTema(int idTema) {

		Logica.temas.remove(idTema);

		Tema tema = Logica.temas.get(idTema);

		for (int i = 0; i < Logica.temas.size(); i++) {
			if (Logica.temas.get(i).getPrec() == tema) {
				Logica.temas.remove(i);
				for (int j = 0; j < Logica.temas.size(); j++) {
					if (Logica.temas.get(j).getPrec() == Logica.temas.get(i)) {
						Logica.temas.remove(j);
					}
				}
			}
		}
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
				tema = Logica.temas.get(Integer.parseInt(req.getParameter("editPrec")));
			}

			editTema(Integer.parseInt(req.getParameter("listaTemas")), req.getParameter("editTitulo"),
					req.getParameter("editIntro"), req.getParameter("editCont"), tema,
					Integer.parseInt(req.getParameter("editRest")));
		} else if (req.getParameter("acao").equals("elimTema")) {
			elimTema(Integer.parseInt(req.getParameter("listaTemas")));
		}

		req.setAttribute("arrayTemas", Logica.temas);

		return "/index.jsp?pag=temas";
	}

}
