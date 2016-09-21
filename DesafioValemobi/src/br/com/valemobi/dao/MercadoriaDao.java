package br.com.valemobi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.valemobi.model.Mercadoria;

@Repository
public class MercadoriaDao {

	private final Connection conexao;
	private final String sqlIncluir = "INSERT INTO mercadoria(tipoMercadoria, nomeMercadoria, quantidade, preco, tipoNegocio) VALUES (?,?,?,?,?);";
	private final String sqlListar = "SELECT * FROM mercadoria;";

	@Autowired
	public MercadoriaDao(DataSource dataSource) {
		try {
			this.conexao = dataSource.getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void adicionarMercadoria(Mercadoria mercadoria) {
		try {

			PreparedStatement comando = conexao.prepareStatement(sqlIncluir);
			comando.setString(1, mercadoria.getTipoMercadoria());
			comando.setString(2, mercadoria.getNomeMercadoria());
			comando.setInt(3, mercadoria.getQuantidade());
			comando.setDouble(4, mercadoria.getPreco());
			comando.setString(5, mercadoria.getTipoNegocio());

			comando.execute();
			comando.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Mercadoria> listarMercadorias() {
		try {
			List<Mercadoria> mercadorias = new ArrayList<Mercadoria>();
			PreparedStatement comando = conexao.prepareStatement(sqlListar);
			ResultSet rs = comando.executeQuery();

			while (rs.next()) {

				Mercadoria mercadoria = new Mercadoria();
				mercadoria.setIdMercadoria(rs.getInt("idMercadoria"));
				mercadoria.setTipoMercadoria(rs.getString("tipoMercadoria"));
				mercadoria.setNomeMercadoria(rs.getString("nomeMercadoria"));
				mercadoria.setQuantidade(rs.getInt("quantidade"));
				mercadoria.setPreco(rs.getDouble("preco"));
				mercadoria.setTipoNegocio(rs.getString("tipoNegocio"));

				mercadorias.add(mercadoria);

			}

			rs.close();
			comando.close();
			return mercadorias;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
