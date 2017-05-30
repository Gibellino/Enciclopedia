package model;

public class Utilizador {

	private String nome;
	private String mail;
	private String password;
	private TipoUtilizador tipoUser;
	private String dataNasc;

	public Utilizador(String nome, String mail, String password, TipoUtilizador tipoUser, String dataNasc) {
		super();
		this.nome = nome;
		this.mail = mail;
		this.password = password;
		this.tipoUser = tipoUser;
		this.dataNasc = dataNasc;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public TipoUtilizador getTipoUser() {
		return tipoUser;
	}

	public void setTipoUser(TipoUtilizador tipoUser) {
		this.tipoUser = tipoUser;
	}

	public String getDataNasc() {
		return dataNasc;
	}

	public void setDataNasc(String dataNasc) {
		this.dataNasc = dataNasc;
	}

}
