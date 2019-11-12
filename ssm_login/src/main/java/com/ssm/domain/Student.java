package com.ssm.domain;

public class Student {

    private Integer  stuId;
    private String stuAccount;
    private String  stuName;
    private String stuSex;
    private String email;
    private String stuPassword;

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    public String getStuAccount() {
        return stuAccount;
    }

    public void setStuAccount(String stuAccount) {
        this.stuAccount = stuAccount;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getStuSex() {
        return stuSex;
    }

    public void setStuSex(String stuSex) {
        this.stuSex = stuSex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStuPassword() {
        return stuPassword;
    }

    public void setStuPassword(String stuPassword) {
        this.stuPassword = stuPassword;
    }

    @Override
    public String toString() {
        return "Student{" +
                "stuId=" + stuId +
                ", stuAccount='" + stuAccount + '\'' +
                ", stuName='" + stuName + '\'' +
                ", stuSex='" + stuSex + '\'' +
                ", email='" + email + '\'' +
                ", stuPassword='" + stuPassword + '\'' +
                '}';
    }
}
