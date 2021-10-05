package vo;

public class AlumnoVO {
	private int id, cp;
	private String nombreAlumno, hora, personaContacto, 
	curso, direccionCentro, motivos, fecha_llamada, 
	fecha_registro;

	public AlumnoVO() {

	}

	public AlumnoVO(int id, String nombreAlumno, String curso, String personaContacto, String direccionCentro, int cp,
			String motivos, String fecha_llamada, String fecha_registro,String hora) {
		super();
		this.id = id;
		this.cp = cp;
		this.nombreAlumno = nombreAlumno;
		this.curso = curso;
		this.personaContacto = personaContacto;
		this.direccionCentro = direccionCentro;
		this.motivos = motivos;
		this.fecha_llamada = fecha_llamada;
		this.fecha_registro = fecha_registro;
		this.hora=hora;
	}

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCp() {
		return cp;
	}

	public void setCp(int cp) {
		this.cp = cp;
	}

	public String getNombreAlumno() {
		return nombreAlumno;
	}

	public void setNombreAlumno(String nombreAlumno) {
		this.nombreAlumno = nombreAlumno;
	}

	public String getCurso() {
		return curso;
	}

	public void setCurso(String curso) {
		this.curso = curso;
	}

	public String getDireccionCentro() {
		return direccionCentro;
	}

	public void setDireccionCentro(String direccionCentro) {
		this.direccionCentro = direccionCentro;
	}

	public String getMotivos() {
		return motivos;
	}

	public void setMotivos(String motivos) {
		this.motivos = motivos;
	}

	public String getFecha_llamada() {
		return fecha_llamada;
	}

	public void setFecha_llamada(String fecha_llamada) {
		this.fecha_llamada = fecha_llamada;
	}

	public String getFecha_registro() {
		return fecha_registro;
	}

	public void setFecha_registro(String fecha_registro) {
		this.fecha_registro = fecha_registro;
	}

	public String getPersonaContacto() {
		return personaContacto;
	}

	public void setPersonaContacto(String personaContacto) {
		this.personaContacto = personaContacto;
	}

}
