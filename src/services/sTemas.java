package services;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Tema;

public class sTemas implements Logica{

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

	public void addTema(){
		
	}
	
	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {

		
		return "/index.jsp";
	}

}
