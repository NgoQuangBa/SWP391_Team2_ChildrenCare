/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author Dan Chen
 */
@Builder
@Getter
@Setter
@ToString
public class ReservationDetail {

    private int detailID;
    private Date reservationDate;
    private Service service;
    private Reservation reservation;
    private boolean status;
    private Child child;
}
