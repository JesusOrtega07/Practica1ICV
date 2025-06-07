/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author AsHunter
 */
public class ItemList {

    public ItemList() {
    }

    public void mostrarTodos() {
        Asesino as = new Asesino();
        Luchador top = new Luchador();
        Tirador adc = new Tirador();
        Mago Mid = new Mago();
        Tanque t = new Tanque();
        Soporte supp = new Soporte();

        System.out.println("🥊 Luchador");
        for (String object : top.OBJETOS) {
            System.out.println(object);
        }

        System.out.println("\n🎯 Tirador");
        for (String object : adc.OBJETOS) {
            System.out.println(object);
        }
        System.out.println("\n🗡️ Asesino");

        for (String object : as.OBJETOS) {
            System.out.println(object);
        }

        System.out.println("\n🔮 Mago");
        for (String object : Mid.OBJETOS) {
            System.out.println(object);
        }
        System.out.println("\n🛡️ Tanque");
        for (String object : t.OBJETOS) {
            System.out.println(object);
        }
        System.out.println("\n✨ Soporte");
        for (String object : supp.OBJETOS) {
            System.out.println(object);
        }
    }
}
