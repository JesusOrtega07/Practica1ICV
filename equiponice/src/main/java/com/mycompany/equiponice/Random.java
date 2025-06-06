package com.mycompany.equiponice;

import java.util.Scanner;

public class Random {
    
    public static void main(String[] args){
        Scanner entrada = new Scanner(System.in);
        
        int cantidad = 1600, b500, b100;
        
        System.out.println("ingrese cantidad");
        cantidad = entrada.nextInt();
        
        b500 = cantidad / 500;
        cantidad = cantidad % 500;
        
        System.out.println("billetes de a $500 son:" + b500);
        System.out.println("le queda $" + cantidad);
    }
    
}
