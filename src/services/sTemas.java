package services;

import java.util.ArrayList;

import model.Tema;

public class sTemas {

	private ArrayList<Tema> tema;

	public sTemas(ArrayList<Tema> tema) {
		tema = new ArrayList<>();
	}

	public ArrayList<Tema> getTema() {
		return tema;
	}

	public void setTema(ArrayList<Tema> tema) {
		this.tema = tema;
	}

}
