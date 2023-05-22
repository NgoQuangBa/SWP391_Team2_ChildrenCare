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
public class User {

    
    private int userID;
    private String name;
    private boolean gender;
    private String email;
    private String username;
    private String password;
    private String phone;
    private Role role;
    private String imageURL;
    private boolean banned;
}
