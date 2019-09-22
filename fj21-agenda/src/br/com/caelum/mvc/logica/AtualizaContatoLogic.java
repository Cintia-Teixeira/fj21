package br.com.caelum.mvc.logica;

import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class AtualizaContatoLogic implements Logica {

	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		try {
			long id = Long.parseLong(req.getParameter("id"));

			Contato contato = new Contato();

			contato.setNome(req.getParameter("nome"));
			contato.setEmail(req.getParameter("email"));
			contato.setEndereco(req.getParameter("endereco"));
			contato.setId(id);

			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			String data = req.getParameter("dataNascimento");
			Date date = sdf.parse(data);
			Calendar cal = Calendar.getInstance();
			cal.setTime(date);
			contato.setDataNascimento(cal);

			Connection connection = (Connection) req.getAttribute("conexão");

			ContatoDao dao = new ContatoDao(connection);
			dao.atualiza(contato);

		} catch (ParseException e) {
			System.out.println("Erro de conversão da data");

		}
		System.out.println("Atualizando contato...");

		return "mvc?logica=ListaContatosLogic";
	}

}
