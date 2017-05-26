package model;

public class Tema {

	private String nomeTema;
	private String descricao;
	private int prec; //Precedência
	private int restricao;
	
	public Tema(String nomeTema, String descricao, int prec, int restricao) {
		this.nomeTema = nomeTema;
		this.descricao = descricao;
		this.prec = prec;
		this.restricao = restricao;
	}

	public String getNomeTema() {
		return nomeTema;
	}

	public void setNomeTema(String nomeTema) {
		this.nomeTema = nomeTema;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public int getPrec() {
		return prec;
	}

	public void setPrec(int prec) {
		this.prec = prec;
	}

	public int getRestricao() {
		return restricao;
	}

	public void setRestricao(int restricao) {
		this.restricao = restricao;
	}
	
}
