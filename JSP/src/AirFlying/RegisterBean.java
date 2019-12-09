package AirFlying;
/*
 * 작성자: 장지은
 * 파일 이름: RegisterBean.java
 * 목적: member 테이블 Bean 파일
 */

public class RegisterBean {

    private String mem_id;
    private String mem_passwd;
    private String mem_name;
    private String mem_gender;
    private String mem_phone;
    private String mem_birth;
    private String mem_date;

    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }

    public void setMem_passwd(String mem_passwd) {
        this.mem_passwd = mem_passwd;
    }

    public void setMem_name(String mem_name) {
        this.mem_name = mem_name;
    }

    public void setMem_gender(String mem_gender) {
        this.mem_gender = mem_gender;
    }

    public void setMem_phone(String mem_phone) {
        this.mem_phone = mem_phone;
    }

    public void setMem_birth(String mem_birth) {
        this.mem_birth = mem_birth;
    }

    public void setMem_date(String mem_date) {
        this.mem_date = mem_date;
    }

    public String getMem_id() {
        return mem_id;
    }

    public String getMem_passwd() {
        return mem_passwd;
    }

    public String getMem_name() {
        return mem_name;
    }

    public String getMem_gender() {
        return mem_gender;
    }

    public String getMem_phone() {
        return mem_phone;
    }

    public String getMem_birth() {
        return mem_birth;
    }

    public String getMem_date() {
        return mem_date;
    }
}

