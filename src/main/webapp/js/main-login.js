"use strict";

/** Funciones */

/**
 * Función que se ejecuta cada vez que se escribe en el texto.
 * 
 */
function inputListener() {
	elem_formBtn.disabled = checkIfEmpty();
}

/**
 * Comprueba si los campos de las credenciales están vacías, e indica al usario
 * si lo están.
 * 
 * @return boolean
 */
function checkIfEmpty() {
	return !elem_formTxtUsername.value || !elem_formTxtPassword.value;
}

/** Variables */
let elem_formTxtUsername = document.getElementById('txtUsername');
let elem_formTxtPassword = document.getElementById('txtPassword');
let elem_formBtn = document.getElementById('btn');
let elem_formMessage = document.getElementById('');

/** Main (Punto de entrada) */
elem_formBtn.disabled = checkIfEmpty();
elem_formTxtUsername.addEventListener('input', inputListener);
elem_formTxtPassword.addEventListener('input', inputListener);