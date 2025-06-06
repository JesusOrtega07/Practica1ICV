package com.mycompany.equiponice;

import java.util.Scanner;

public class Equiponice {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        int[] numero;
        numero = new int[10];
        
        numero[0] = 0;
        numero[1] = 1;
        numero[2] = 2;
        numero[5] = 5;
        numero[6] = 6;
        numero[9] = 9;
        //# Imprimo el dato de tal pocicion
        System.out.println("El dato es: " + numero[0] + " y " + numero[9]);

    }
}
