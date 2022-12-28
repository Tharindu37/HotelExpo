package entity;

public class User {
    private String email;
    private String fName;
    private String lName;
    private String contact;
    private String password;
    private boolean activeState;

    public User() {
    }

    public User(String email, String fName, String lName, String contact, String password, boolean activeState) {
        this.email = email;
        this.fName = fName;
        this.lName = lName;
        this.contact = contact;
        this.password = password;
        this.activeState = activeState;
    }

    public boolean isActiveState() {
        return activeState;
    }

    public void setActiveState(boolean activeState) {
        this.activeState = activeState;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "UserDto{" +
                "email='" + email + '\'' +
                ", fName='" + fName + '\'' +
                ", lName='" + lName + '\'' +
                ", contact='" + contact + '\'' +
                ", password='" + password + '\'' +
                ", activeState=" + activeState +
                '}';
    }
}
