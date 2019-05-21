package cn.pzhu.ssm.pojo;

public class GradeCourse extends Course {
    private int toid;
    private int tograde;
    private float grade;
    private String toname;
    private int gcount;


    public int getToid() {
        return toid;
    }

    public void setToid(int toid) {
        this.toid = toid;
    }

    public int getTograde() {
        return tograde;
    }

    public void setTograde(int tograde) {
        this.tograde = tograde;
    }


    public float getGrade() {
        return grade;
    }

    public void setGrade(float grade) {
        this.grade = grade;
    }

    public String getToname() {
        return toname;
    }

    public void setToname(String toname) {
        this.toname = toname;
    }


    public int getGcount() {
        return gcount;
    }

    public void setGcount(int gcount) {
        this.gcount = gcount;
    }
}
