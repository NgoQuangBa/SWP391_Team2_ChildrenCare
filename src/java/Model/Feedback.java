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
public class Feedback {

    private int id;
    private String detail;
    private int CustomerID;
    private int Rated;
    private String imglink;
    private Service services;
    private java.util.Date createDate;
    private boolean  status;
     User user;

    public Feedback(int id, String detail, int CustomerID, int Rated, String imglink, Service services) {
        this.id = id;
        this.detail = detail;
        this.CustomerID = CustomerID;
        this.Rated = Rated;
        this.imglink = imglink;
        this.services = services;
    }

    public Feedback(int id, String detail, int CustomerID, int Rated, String imglink,java.util.Date createDate) {
        this.id = id;
        this.detail = detail;
        this.CustomerID = CustomerID;
        this.Rated = Rated;
        this.imglink = imglink;
        this.createDate = createDate;
    }

    public Feedback(int id, String detail, int CustomerID, int Rated, String imglink, Service services, java.util.Date createDate, boolean status) {
        this.id = id;
        this.detail = detail;
        this.CustomerID = CustomerID;
        this.Rated = Rated;
        this.imglink = imglink;
        this.services = services;
        this.createDate = createDate;
        this.status = status;
    }

    public Feedback(int id, String detail, int CustomerID, int Rated, String imglink, Service services, java.util.Date createDate, boolean status, User user) {
        this.id = id;
        this.detail = detail;
        this.CustomerID = CustomerID;
        this.Rated = Rated;
        this.imglink = imglink;
        this.services = services;
        this.createDate = createDate;
        this.status = status;
        this.user = user;
    }




    
    
    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

   

    public java.util.Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(java.util.Date createDate) {
        this.createDate = createDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public int getCustomerID() {
        return CustomerID;
    }

    public void setCustomerID(int CustomerID) {
        this.CustomerID = CustomerID;
    }

    public int getRated() {
        return Rated;
    }

    public void setRated(int Rated) {
        this.Rated = Rated;
    }

    public String getImglink() {
        return imglink;
    }

    public void setImglink(String imglink) {
        this.imglink = imglink;
    }

    public Service getServices() {
        return services;
    }

    public void setServices(Service services) {
        this.services = services;
    }
}



