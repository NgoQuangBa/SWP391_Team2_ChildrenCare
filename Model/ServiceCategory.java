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
 */
@Builder
@Getter
@Setter
@ToString
public class ServiceCategory {

    private int categoryID;
    private String categoryDetail;
    private String categoryName;
}
