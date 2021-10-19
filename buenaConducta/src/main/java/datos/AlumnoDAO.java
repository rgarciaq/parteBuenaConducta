package datos;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import vo.AlumnoVO;

public class AlumnoDAO {

	public static Connection getConnection() {
		Connection conexion = null;
		try {

			// CARGAR EL FICHERO DE PROPIEDADES
			Properties properties = new Properties();
			InputStream input = AlumnoDAO.class.getResourceAsStream("/configuracion/configuration.properties");
			properties.load(input);

			String driver = properties.getProperty("driver");
			String urlConexion = properties.getProperty("urlConexion");
			String usuario = properties.getProperty("usuario");
			String password = properties.getProperty("password");

			Class.forName(driver);
			conexion = DriverManager.getConnection(urlConexion, usuario, password);

		} catch (Exception e) {
			System.out.println(e);
		}
		return conexion;
	}

	public static int guardar(AlumnoVO e){
		int status=0;
		try{
			
			Connection con=AlumnoDAO.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into table_alumno values (?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, e.getId());
			ps.setString(2,e.getNombreAlumno());
			ps.setString(3,e.getCurso());
			ps.setString(4,e.getPersonaContacto());
			ps.setString(5,e.getDireccionCentro());
			ps.setInt(6,e.getCp());
			ps.setString(7,e.getMotivos());
			ps.setString(8,e.getFecha_llamada());
			ps.setString(9,e.getHora());
			ps.setString(10,e.getFecha_registro());
			status=ps.executeUpdate();
			
			con.close();
		}catch(Exception ex){ex.printStackTrace();}
		
		return status;
	}
	
	public static int modificar(AlumnoVO e){
		int status=0;
		try{
			Connection con=AlumnoDAO.getConnection();
			PreparedStatement ps=con.prepareStatement("update table_alumno set nombreAlumnoCompleto=?,curso=?,personaContacto=? ,direccionCentro=?,cp=?,motivos=?,fecha_llamada=?,hora=?,fecha_registro=?  where id=?");
			
			ps.setString(1,e.getNombreAlumno());
			ps.setString(2,e.getCurso());
			ps.setString(3,e.getPersonaContacto());
			ps.setString(4,e.getDireccionCentro());
			ps.setInt(5,e.getCp());
			ps.setString(6,e.getMotivos());
			ps.setString(7,e.getFecha_llamada());
			ps.setString(8,e.getHora());
			ps.setString(9,e.getFecha_registro());
			ps.setInt(10, e.getId());
			status=ps.executeUpdate();
			
			con.close();
		}catch(Exception ex){ex.printStackTrace();}
		
		return status;
	}
	
	
	public static List<AlumnoVO> obtenerParte() {
		List<AlumnoVO> list = new ArrayList<AlumnoVO>();

		try {
			Connection con = AlumnoDAO.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from table_alumno");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				AlumnoVO e = new AlumnoVO();
				e.setId(rs.getInt(1));
				e.setNombreAlumno(rs.getString(2));
				e.setCurso(rs.getString(3));
				e.setPersonaContacto(rs.getString(4));
				e.setDireccionCentro(rs.getString(5));
				e.setCp(rs.getInt(6));
				e.setMotivos(rs.getString(7));
				e.setFecha_llamada(rs.getString(8));
				e.setHora(rs.getString(9));
				e.setFecha_registro(rs.getString(10));

				list.add(e);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	
	
	
	
	public static AlumnoVO obtenerAlumnoID(int id) {
		AlumnoVO e = new AlumnoVO();

		try {
			Connection con = AlumnoDAO.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from table_alumno where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				e.setId(rs.getInt(1));
				e.setNombreAlumno(rs.getString(2));
				e.setCurso(rs.getString(3));
				e.setPersonaContacto(rs.getString(4));
				e.setDireccionCentro(rs.getString(5));
				e.setCp(rs.getInt(6));
				e.setMotivos(rs.getString(7));
				e.setFecha_llamada(rs.getString(8));
				e.setHora(rs.getString(9));
				e.setFecha_registro(rs.getString(10));

			}
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return e;
	}

	public static int eliminar(int id){
		int status=0;
		try{
			Connection con=AlumnoDAO.getConnection();
			PreparedStatement ps=con.prepareStatement("delete from table_alumno  where id=?");
			ps.setInt(1,id);
			status=ps.executeUpdate();
			
			con.close();
		}catch(Exception e){e.printStackTrace();}
		
		return status;
	}
}
