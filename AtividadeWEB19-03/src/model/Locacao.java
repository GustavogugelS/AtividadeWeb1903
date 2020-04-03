package model;

public class Locacao {
	protected Integer usuario;
	protected Integer veiculo;
	protected String dtLocacao;
	protected String dtPrevLocacao;
	protected String dtDev;
	protected Float vlPagar;
	protected Float vlPago;
	protected Float vlMulta;
	
	
	
	public String getDtPrevLocacao() {
		return dtPrevLocacao;
	}


	public void setDtPrevLocacao(String dtPrevLocacao) {
		this.dtPrevLocacao = dtPrevLocacao;
	}


	public Integer getUsuario() {
		return usuario;
	}


	public void setUsuario(Integer usuario) {
		this.usuario = usuario;
	}


	public Integer getVeiculo() {
		return veiculo;
	}


	public void setVeiculo(Integer veiculo) {
		this.veiculo = veiculo;
	}


	public String getDtLocacao() {
		return dtLocacao;
	}


	public void setDtLocacao(String dtLocacao) {
		this.dtLocacao = dtLocacao;
	}


	public String getDtDev() {
		return dtDev;
	}


	public void setDtDev(String dtDev) {
		this.dtDev = dtDev;
	}


	public Float getVlPagar() {
		return vlPagar;
	}


	public void setVlPagar(Float vlPagar) {
		this.vlPagar = vlPagar;
	}


	public Float getVlPago() {
		return vlPago;
	}


	public void setVlPago(Float vlPago) {
		this.vlPago = vlPago;
	}


	public Float getVlMulta() {
		return vlMulta;
	}


	public void setVlMulta(Float vlMulta) {
		this.vlMulta = vlMulta;
	}
	
}
