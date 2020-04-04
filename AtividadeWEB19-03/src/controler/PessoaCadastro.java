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
import model.Pessoas;

/**
 * Servlet implementation class PessoaCadastro
 */
@WebServlet("/PessoaCadastro")
public class PessoaCadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PessoaCadastro() {
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
		
		Pessoas p;
		p = new Pessoas();
	
		List <Pessoas> pessoas;
	

		if(request.getSession().getAttribute("pessoas") == null){
			pessoas = new ArrayList<Pessoas>(); 
			request.getSession().setAttribute("pessoas", pessoas);
		}
		else{
			pessoas = (ArrayList) request.getSession().getAttribute("pessoas");
		}		
		
		
		p.setCep(request.getParameter("cdCep"));
		p.setCidade(request.getParameter("cdCidade"));
		p.setCnh(request.getParameter("cdCNH"));
		p.setCpl(request.getParameter("cdCpl"));
		p.setEmail(request.getParameter("nmEmail"));
		p.setEndereco(request.getParameter("nmEndereco"));
		p.setFone(request.getParameter("cdTelefone"));
		p.setNascimento(request.getParameter("dtNascimento"));
		p.setNome(request.getParameter("nmUsuario"));
		p.setSobrenome(request.getParameter("snUsuario"));
		p.setUf(request.getParameter("cdUf"));
		p.setCodigo(Integer.parseInt(request.getParameter("cdUsuario")));
		
		pessoas.add(p);
		
		request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
		
		}
	}



