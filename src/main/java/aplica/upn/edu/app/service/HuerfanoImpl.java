package aplica.upn.edu.app.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import aplica.upn.edu.app.model.Huerfano;



public class HuerfanoImpl{

	
	JdbcTemplate template;
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}

	public List<Huerfano> listar() {
		
		return template.query("select *from Huerfano", new RowMapper<Huerfano>() {
			 public Huerfano mapRow(ResultSet rs, int row) throws SQLException {    
				 Huerfano h = new Huerfano();
					h.setId(rs.getInt(1));
					h.setNombre(rs.getString(2));
					h.setApellido(rs.getString(3));
					h.setEdad(rs.getInt(4));
					h.setGenero(rs.getString(5));
					h.setFotoReferencial(rs.getString(6));
					h.setEstado(rs.getString(7));
					return h;
			 }
		
		});
	}

}

