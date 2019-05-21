package cn.pzhu.ssm.pojo;

public class Teacher {
    private Integer tid;

    private String tname;

    private Integer tpassword;

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname == null ? null : tname.trim();
    }

    public Integer getTpassword() {
        return tpassword;
    }

    public void setTpassword(Integer tpassword) {
        this.tpassword = tpassword;
    }
}