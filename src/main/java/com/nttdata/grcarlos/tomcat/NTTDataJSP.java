package com.nttdata.grcarlos.tomcat;

import java.util.HashMap;

/**
 * Clase que se usa para el fichero "nttdataJSP.jsp".
 * 
 * @author NTTData
 */
public class NTTDataJSP {
	
	/**
	 * Constructor. (privado)
	 * */
	private NTTDataJSP() {
		
	}
	
	/**
	 * Método de prueba para JSP.
	 * Devuelve una cadena con un saludo y el nombre.
	 * 
	 * @param name nombre
	 * @return String
	 * */
	public static String helloNTTData(final String name) {
		return "Hola " + name;
	}
	
	
	/* Funcionalidad adicional por el alumno. */
	
	/** Hashmap que contiene las cuentas de usuarios. */
	private static HashMap<String, Integer> userAccounts = new HashMap<>();

	
	/**
	 * Método para inicializar los datos del HashMap de cuentas de usuario.
	 * */
	public static void initializeUserAccounts() {
		
		// Añadir cuentas de usuario siempre y cuando no haya datos en el.
		if (userAccounts.isEmpty()) {
			userAccounts.put("Carlos", "Mi cementerio de sueños olvidados...".hashCode());
			userAccounts.put("Gumi Megpoid", "Entee - Deco*27".hashCode());
		}
		
	} 
	
	/**
	 * Método para comprobar credenciales mediante las variables de clase.
	 * Obviamente, en una caso de la vida real se debería haber usado valores
	 * de una base de datos.
	 * 
	 * El hashCode tambíen sería una mala práctica. En un caso real, se usaría
	 * alguna librería de hash que provea el algoritmo SHA-512, por ejemplo.
	 * 
	 * @param username nombre de usuario
	 * @param passwordHashcode HashCode de la contraseña
	 * @return boolean
	 * */
	public static boolean checkCredentials(String username, int passwordHashcode) {
		return 	userAccounts.get(username) != null &&
				userAccounts.get(username).equals(passwordHashcode);
	}
	
	
	/**
	 * @return the userAccounts
	 */
	public static HashMap<String, Integer> getUserAccounts() {
		return userAccounts;
	}

	/**
	 * @param userAccounts the userAccounts to set
	 */
	public static void setUserAccounts(HashMap<String, Integer> userAccounts) {
		NTTDataJSP.userAccounts = userAccounts;
	}
	
}
