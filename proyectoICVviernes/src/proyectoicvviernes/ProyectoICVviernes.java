/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package proyectoicvviernes;

import controlador.ControladorEstudiante;
import modelo.Estudiante;

/**
 *
 * @author angel
 */
public class ProyectoICVviernes {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       ControladorEstudiante controlador = new ControladorEstudiante();
        Estudiante estudiante = controlador.pedirDatosEstudiante();

        System.out.println("Estudiante registrado:");
        System.out.println("Matrícula: " + estudiante.getMatricula());
        System.out.println("Edad: " + estudiante.getEdad());
        System.out.println("Nombre: " + estudiante.getNombre());
        System.out.println("Apellido Paterno: " + estudiante.getApPaterno());
        System.out.println("Apellido Materno: " + estudiante.getApMaterno());
    }
    
}
