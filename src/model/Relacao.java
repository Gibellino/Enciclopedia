package model;

import java.util.ArrayList;

public class Relacao {

	private Utilizador uti;
	private Tema tema;
	private ArrayList<Comentario> comentario;

	public Relacao(Utilizador uti, Tema tema) {
		this.uti = uti;
		this.tema = tema;
		this.comentario = new ArrayList();
	}

	public Utilizador getUti() {
		return uti;
	}

	public void setUti(Utilizador uti) {
		this.uti = uti;
	}

	public Tema getTema() {
		return tema;
	}

	public void setTema(Tema tema) {
		this.tema = tema;
	}

	public ArrayList<Comentario> getComentario() {
		return comentario;
	}

	public void setComentario(ArrayList<Comentario> comentario) {
		this.comentario = comentario;
	}

}
