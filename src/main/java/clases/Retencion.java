/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author Juanjo Cortés
 */
public class Retencion {
    private double salario,retencion,salarioneto;

    public Retencion() {
        
    }

    public double getSalario() {
        return salario;
    }

    public double getRetencion() {
        return retencion;
    }

    public double getSalarioneto() {
        return salarioneto;
    }

    public void setSalario(double salario) {
        this.salario = salario;
        
        if(this.salario<=1000){
            this.retencion = 0;
        }else if(this.salario>1000&&this.salario<=3000){
            this.retencion = 10;
        }else if(this.salario>3000){
            this.retencion = 20;
        }
        
        this.salarioneto  = this.salario - ((this.salario*this.retencion)/100);
    }

    public void setRetencion(double retencion) {
        this.retencion = retencion;
    }

    public void setSalarioneto(double salarioneto) {
        this.salarioneto = salarioneto;
    }
    
    
}
