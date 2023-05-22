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
public class Role {
    public static final int ADMIN = 1;
    public static final int MANAGER = 2;
    public static final int STAFF = 3;
    public static final int CUSTOMER = 4;
    private int roleID;
    private String roleName;

    public Role() {
    }

    public Role(int roleID, String roleName) {
        this.roleID = roleID;
        this.roleName = roleName;
    }

    public Role(int roleID) {
        this.roleID = roleID;
    }
    
}
