package services;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Tema;

public class STemas implements Logica{

	private ArrayList<Tema> tema;

	public STemas(ArrayList<Tema> tema) {
		tema = new ArrayList<>();
	}

	public ArrayList<Tema> getTema() {
		return tema;
	}

	public void setTema(ArrayList<Tema> tema) {
		this.tema = tema;
	}

	public void addTema(){
		System.out.print("Adicionar Tema");
	}
	
	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {

		
		return "/index.jsp";
	}

}
