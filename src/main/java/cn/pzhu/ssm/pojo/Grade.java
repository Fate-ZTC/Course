package cn.pzhu.ssm.pojo;

public class Grade {
    private int gid;
    private int toid;
    private int tograde;
    private int sid;
    private float grade;
    private int gcount;

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

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

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public float getGrade() {
        return grade;
    }

    public void setGrade(float grade) {
        this.grade = grade;
    }

    public int getGcount() {
        return gcount;
    }

    public void setGcount(int gcount) {
        this.gcount = gcount;
    }
}
