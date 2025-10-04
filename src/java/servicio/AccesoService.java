/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicio;

import modelo.Acceso;
import persistencia.AccesoRepositorio;

/**
 *
 * @author barro
 */
public class AccesoService {
    
    AccesoRepositorio ap = new AccesoRepositorio();
    
    public void saveAcceso ( int cod_usuario, String correo, String contraseña) {
        Acceso acceso = new Acceso(cod_usuario, correo, contraseña);
        
        ap.saveAcceso(acceso);
        
    }

    public int autenticar(String correo, String contraseña) {
        Acceso a = ap.obtenerAcceso(correo);
        
        if(a != null && a.getContrasena().equals(contraseña)) {
            return a.getIdUsuario();
        }
        
        return -1;
    }
}
