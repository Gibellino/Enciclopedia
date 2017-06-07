package services;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Tema;

public interface Logica {

	static ArrayList<Tema> temas = new ArrayList<>();
	
	String executa(HttpServletRequest req, HttpServletResponse res) throws Exception;

}
