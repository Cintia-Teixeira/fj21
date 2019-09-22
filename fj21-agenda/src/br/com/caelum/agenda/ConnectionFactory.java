package br.com.caelum.agenda;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionFactory {

	public Connection getConnection() throws SQLException {
		System.out.println("conectando ...");

		try {
			Class.forName("org.sqlite.JDBC");
		} catch (ClassNotFoundException e) {
			throw new SQLException(e);
		}

		Connection connection = DriverManager
				.getConnection("jdbc:sqlite:C:/Users/cmtsi/git/fj21/fj21-agenda/banco.db");

		Statement statement = connection.createStatement();

		// criando uma tabela
		String tabelaContatos = "CREATE TABLE IF NOT EXISTS contatos (" + " id INTEGER PRIMARY KEY AUTOINCREMENT,"
				+ " nome VARCHAR(255)," + " email VARCHAR(255)," + " endereco VARCHAR(255)," + " dataNascimento DATE"
				+ ")";

		statement.execute(tabelaContatos);

		return connection;
	}
}