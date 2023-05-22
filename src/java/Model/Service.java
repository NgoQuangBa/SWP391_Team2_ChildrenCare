/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

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
public class Service {

    private int serviceID;
    private String serviceName;
    private String serviceDetail;
    private ServiceCategory category;
    private float servicePrice;
    private String imageURL;
    private boolean status;
    private User author;
}