package Model;

import lombok.Builder;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Admin
 */
@Builder
public class Children {
    private int childId;
    private String childname;
    private int gender;
    private int parentId;

    public Children(int childId, String childname, int gender, int parentId) {
        this.childId = childId;
        this.childname = childname;
        this.gender = gender;
        this.parentId = parentId;
    }

    public int getChildId() {
        return childId;
    }

    public void setChildId(int childId) {
        this.childId = childId;
    }

    public String getChildname() {
        return childname;
    }

    public void setChildname(String childname) {
        this.childname = childname;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }

    @Override
    public String toString() {
        return "Children{" + "childId=" + childId + ", childname=" + childname + ", gender=" + gender + ", parentId=" + parentId + '}';
    }
    
}
