package cn.pzhu.ssm.pojo;

public class CourseTopic extends Course {
    private int toid;
    private String toname;
    private String tosta;

    public int getToid() {
        return toid;
    }

    public void setToid(int toid) {
        this.toid = toid;
    }

    public String getToname() {
        return toname;
    }

    public void setToname(String toname) {
        this.toname = toname;
    }

    public String getTosta() {
        return tosta;
    }

    public void setTosta(String tosta) {
        this.tosta = tosta;
    }
}
