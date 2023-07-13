
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author minhhieu
 */
public class Account {
    private int aId;
    private String aUsername;
    private String aPassword;
    private String aFullname;
    private String aPhone;
    private String aEmail;
    private String aAddress;
    private int aRole;

    public Account() {
    }

    public Account(int aId, String aUsername, String aPassword, String aFullname, String aPhone, String aEmail, String aAddress, int aRole) {
        this.aId = aId;
        this.aUsername = aUsername;
        this.aPassword = aPassword;
        this.aFullname = aFullname;
        this.aPhone = aPhone;
        this.aEmail = aEmail;
        this.aAddress = aAddress;
        this.aRole = aRole;
    }

    public Account(String aUsername, String aPassword, String aFullname, String aPhone, String aAddress, String aEmail) {
        this.aUsername = aUsername;
        this.aPassword = aPassword;
        this.aFullname = aFullname;
        this.aPhone = aPhone;
        this.aEmail = aEmail;
        this.aAddress = aAddress;
    }

     public Account(int aRole) {
        this.aRole = aRole;
    }
    
    public int getaId() {
        return aId;
    }

    public void setaId(int aId) {
        this.aId = aId;
    }

    public String getaUsername() {
        return aUsername;
    }

    public void setaUsername(String aUsername) {
        this.aUsername = aUsername;
    }

    public String getaPassword() {
        return aPassword;
    }

    public void setaPassword(String aPassword) {
        this.aPassword = aPassword;
    }

    public String getaFullname() {
        return aFullname;
    }

    public void setaFullname(String aFullname) {
        this.aFullname = aFullname;
    }

    public String getaPhone() {
        return aPhone;
    }

    public void setaPhone(String aPhone) {
        this.aPhone = aPhone;
    }

    public String getaEmail() {
        return aEmail;
    }

    public void setaEmail(String aEmail) {
        this.aEmail = aEmail;
    }

    public String getaAddress() {
        return aAddress;
    }

    public void setaAddress(String aAddress) {
        this.aAddress = aAddress;
    }

    public int getaRole() {
        return aRole;
    }

    public void setaRole(int aRole) {
        this.aRole = aRole;
    }

    @Override
    public String toString() {
        return "Account{" + "aId=" + aId + ", aUsername=" + aUsername + ", aPassword=" + aPassword + ", aFullname=" + aFullname + ", aPhone=" + aPhone + ", aEmail=" + aEmail + ", aAddress=" + aAddress + ", aRole=" + aRole + '}';
    }
    
    
   
}
