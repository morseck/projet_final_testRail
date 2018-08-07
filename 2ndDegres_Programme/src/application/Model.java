/**
 * 
 */
package application;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

/**
 * @author Cheikh
 * @date 25/05/2017
 * Classe Modele : se charge de faire la connexion entre la base de donn�e embarqu�e et l'application
 * 
 */
public class Model {
	
	private Connection con = null;
	private PreparedStatement stmt = null;
	private Statement s = null;
	private ResultSet res = null;
	
	private static Model instance = null;

	 /**
	 * Constructeur priv�e 
	 */

	 /**
	  * Methode qui renvoit l'unique instance de la classe
	  * @return Singleton
	  */
	 public static Model getInstance() {
		 if(instance==null) instance = new Model();
		 return instance;
	 }
	
	private Model(){
		try {
		     Class.forName("org.hsqldb.jdbc.JDBCDriver" );
		 } catch (Exception e) {
		     System.err.println("ERROR: failed to load HSQLDB JDBC driver.");
		     e.printStackTrace();
		     return;
		 }

		try {
		   con = DriverManager.getConnection("jdbc:hsqldb:file:snddegre", "SA", "");
		   s = con.createStatement();
		   if(con != null) {
			   System.out.println("Connexion reussie");
			   }
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
	}
	
	/**
	 * M�thode qui se charge d'inserer le r�sultat d'une r�solution dans la base de donn�e
	 * @param eq
	 * @param solution
	 * @param d
	 * @return
	 */
	public Statement insertStatement(String eq,String solution,Date d){
		System.out.println(d.toString());
	
		  String s = "INSERT INTO RESOLUTION values (?,?,?)";

		  try {
			stmt = con.prepareStatement(s);
			stmt.setString(1,d.toString());
			stmt.setString(2,eq);
			stmt.setString(3,solution);
			System.out.println(stmt.executeUpdate());
		} catch (SQLException e) {
			
			System.out.println(e.getMessage());
		}
		  
		
		return stmt;
	}
	
	/**
	 * R�cupere l'ensemble des r�solutions 
	 * @return
	 * @throws SQLException
	 */
	public ResultSet getHistory() throws SQLException {	
		res = s.executeQuery("Select * from resolution");
		return res;
	}
	
}


