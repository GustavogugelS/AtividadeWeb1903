package controler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Carros;

/**
 * Servlet implementation class VeiculoCadastro
 */
@WebServlet("/VeiculoCadastro")
public class VeiculoCadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VeiculoCadastro() {
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
		
		//Criando o tipo carros
		Carros c;
		c = new Carros();
		
		//Criando uma lista carros do tipo Carros
		List <Carros> carros;
		
		//Verificando se a lista ja possui registro ou é nova
		if(request.getSession().getAttribute("carros") == null){
			carros = new ArrayList<Carros>(); //Se for nova, ele criar um array list
			request.getSession().setAttribute("carros", carros);
		}
		else{
			carros = (ArrayList) request.getSession().getAttribute("carros"); //Se sim ele somente adiciona em carros
		}		
		
		
		//Setando os parametros que existem em Carros
		c.setCodigo(Integer.parseInt(request.getParameter("cdCarro")));
		c.setDescricao(request.getParameter("nmCarro"));
		c.setMarca("FIAT");
		c.setModelo("SEDAN");
		c.setValor(Float.parseFloat(request.getParameter("vlCarro")));
		
		carros.add(c);
		
		request.getRequestDispatcher("Veiculos.jsp").forward(request, response);
		
	}
}
