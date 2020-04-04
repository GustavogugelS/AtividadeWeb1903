package controler;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Locacao;

/**
 * Servlet implementation class LocacaoAlteracao
 */
@WebServlet("/LocacaoAlteracao")
public class LocacaoAlteracao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LocacaoAlteracao() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			handleRequest(request, response);
		} catch (ServletException | IOException | ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			handleRequest(request, response);
		} catch (ServletException | IOException | ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void handleRequest(final HttpServletRequest request, final HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		
		Locacao l = new Locacao();
		List <Locacao> locacoes;
	

		if(request.getSession().getAttribute("locacoes") == null){
			locacoes = new ArrayList<Locacao>(); 
			request.getSession().setAttribute("locacoes", locacoes);
		}
		else{
			locacoes = (ArrayList) request.getSession().getAttribute("locacoes");
		}		
	
		DateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		
		Integer id = Integer.parseInt(request.getParameter("slLocacao")); //Seleciona qual locação alterar
				
		for(Locacao lo : locacoes){
			if(id.equals(lo.getVeiculo())){
				lo.setDtDev(request.getParameter("dtDevolucao"));//Passa a nova data de devolução
				
				Date dtDev = format.parse(request.getParameter("dtDevolucao"));
				Date dtPrev = format.parse(lo.getDtPrevLocacao());
				
				Calendar a = Calendar.getInstance();
				a.setTime(dtPrev); //data maior
				
				Calendar b = Calendar.getInstance();
				b.setTime(dtDev);// data menor
				
				//a.add(Calendar.DATE, - b.get(Calendar.DAY_OF_MONTH));
			
				Integer Dias = b.get(Calendar.DAY_OF_MONTH) - a.get(Calendar.DAY_OF_MONTH);
				
				lo.setVlMulta(Dias * (10 * lo.getVlPagar() / 100));
				lo.setVlPago(lo.getVlMulta() + lo.getVlPagar());
				//Integer Dias = (dtDev - DtPrev;
			}
		}
		
		request.getRequestDispatcher("Locacao.jsp").forward(request, response);
		
	}   
}
