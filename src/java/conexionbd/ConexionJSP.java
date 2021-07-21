// CLASE CONEXION DE BASE SMYSQL
package conexionbd;

//LIBRRIAS

import java.sql.*;//GENERAL DE BD


public class ConexionJSP {//INICIA CLASE
    
    ///OBJETOS DE CONEXION
    public Connection con;//conexion a BD
    public Statement stmt;//Ejecuta instrucciones SQL (DML, DDL,DCL)
    public ResultSet rs;//Salida y tratamiento de datos
    
    //CONSTRUCTOR=> Metodo especial llamado igual que la clase (inicializar y pasar parametros de conexion a JSP)
     public ConexionJSP( String urlBD, String usuarioBD, String passwordBD) throws Exception{
		Class.forName ("com.mysql.jdbc.Driver");
     con = DriverManager.getConnection (urlBD, usuarioBD, passwordBD );
		stmt = con.createStatement();
	}//TERMINA CONTRUCTOR
     
     //METODO PARA CONSULTAS SELECT
     public ResultSet ejecutaSelect(String query) throws SQLException {
		rs = stmt.executeQuery(query);
		return rs;
	}
     //TERMINA METODO DE CONSULTAR
     
     //METODO PARA MODIFICAR
     public int ejecutaSentencia(String sql) throws SQLException {
		int cambios = stmt.executeUpdate(sql);
		return cambios;
	}//TERMINA METODO MODIFICAR





     
     
     
    
    
}//TERMINA CLASE
