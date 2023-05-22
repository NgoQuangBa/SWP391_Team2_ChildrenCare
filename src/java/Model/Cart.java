/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

 @lombok.Builder
 @lombok.Setter
 @lombok.Getter
 @lombok.ToString
 
/**
 *
 * @author fannaby
 */
public class Cart {
    private ReservationDetail rsvdetail ;
    private Service service;
    private int quantity ; //so luong dich vu dang co trong cart
}
