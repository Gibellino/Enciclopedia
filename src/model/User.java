package model;

public class User {

	private String nome;
	private String mail;
	private String password;
	private TipoUser tipoUser;
	private String dataNasc;
	
	public User(String nome, String mail, String password, TipoUser tipoUser, String dataNasc) {
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

	public TipoUser getTipoUser() {
		return tipoUser;
	}

	public void setTipoUser(TipoUser tipoUser) {
		this.tipoUser = tipoUser;
	}

	public String getDataNasc() {
		return dataNasc;
	}

	public void setDataNasc(String dataNasc) {
		this.dataNasc = dataNasc;
	}
	
}
