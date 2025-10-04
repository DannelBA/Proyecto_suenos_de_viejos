/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package servicio;

import java.util.Date;
import modelo.Usuario;
import modelo.Acceso;
import persistencia.UsuarioRepositorio;

/**
 *
 * @author barro
 */
public class UsuarioService {
    private AccesoService as = new AccesoService();
    private UsuarioRepositorio ur = new UsuarioRepositorio();
    public UsuarioService() {
        
    }
    
    public void saveUsuario(int id_tipo_documento, String documento, String nombre, 
                            String apellidos, String genero, int idRol, Date fecha_nacimiento, 
                            int id_tipo_telefono, String telefono, String correo, String contraseña) {
        Usuario usuario = new Usuario();
        usuario.setIdTipoDocumento(id_tipo_documento);
        usuario.setDocumentoUsuario(documento);
        usuario.setNombreUsuario(nombre);
        usuario.setApellidosUsuario(apellidos);
        usuario.setGeneroUsuario(genero);
        usuario.setIdRol(idRol);
        usuario.setFechaNacimientoUsuario(fecha_nacimiento);
        usuario.setIdTipoTelefono(id_tipo_telefono);
        usuario.setTelefono(telefono);
        
        int cod_usuario = ur.saveUsuario(usuario);
        if(cod_usuario != -1) {
            as.saveAcceso(cod_usuario, correo, contraseña);
        }
        
    }
}
