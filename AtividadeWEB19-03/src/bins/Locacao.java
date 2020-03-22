package bins;

public class Locacao {
	protected String usuario;
	protected String veiculo;
	protected String dtLocacao;
	protected String dtDev;
	protected String vlPagar;
	protected String vlPago;
	protected String vlMulta;
	

	
	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getVeiculo() {
		return veiculo;
	}

	public void setVeiculo(String veiculo) {
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

	public String getVlPagar() {
		return vlPagar;
	}

	public void setVlPagar(String vlPagar) {
		this.vlPagar = vlPagar;
	}

	public String getVlPago() {
		return vlPago;
	}

	public void setVlPago(String vlPago) {
		this.vlPago = vlPago;
	}

	public String getVlMulta() {
		return vlMulta;
	}

	public void setVlMulta(String vlMulta) {
		this.vlMulta = vlMulta;
	}

	
	@Override
	public String toString() {
		return "U: " + usuario + " |V: " + veiculo + " |Loca: " + dtLocacao + " |Devo: " + dtDev + " |Pagar: " + "R$ " + vlPagar +
				" |Pago: " + "R$ " + vlPago + " |Multa: " + "R$ " + vlMulta;
	}
	
}
