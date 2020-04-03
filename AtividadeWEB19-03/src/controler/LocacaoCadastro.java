package controler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Locacao;
import model.Pessoas;

/**
 * Servlet implementation class LocacaoCadastro
 */
@WebServlet("/LocacaoCadastro")
public class LocacaoCadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LocacaoCadastro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		handleRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		handleRequest(request, response);
	}
	
	private void handleRequest(final HttpServletRequest request, final HttpServletResponse response)
			throws ServletException, IOException {
		
		Locacao l;
		l = new Locacao();
	
		List <Locacao> locacoes;
	

		if(request.getSession().getAttribute("locacoes") == null){
			locacoes = new ArrayList<Locacao>(); 
			request.getSession().setAttribute("locacoes", locacoes);
		}
		else{
			locacoes = (ArrayList) request.getSession().getAttribute("locacoes");
		}		
		
		
		l.setDtDev(request.getParameter("dtDevolucao"));
		l.setDtLocacao(request.getParameter("dtLocacao"));
		l.setDtPrevLocacao(request.getParameter("dtPrevDevolucao"));
		l.setUsuario(Integer.parseInt(request.getParameter("cdUsuario")));
		l.setVeiculo(Integer.parseInt(request.getParameter("cdCarro")));
		l.setVlMulta(Float.parseFloat(request.getParameter("vlMulta")));
		l.setVlPagar(Float.parseFloat(request.getParameter("vlCobrar")));
		l.setVlPago(Float.parseFloat(request.getParameter("vlPago")));
		
		locacoes.add(l);
		
		request.getRequestDispatcher("Locacao.jsp").forward(request, response);
		
	}

}
