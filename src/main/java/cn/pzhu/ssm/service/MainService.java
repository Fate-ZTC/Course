package cn.pzhu.ssm.service;

import cn.pzhu.ssm.pojo.CourseTopic;
import cn.pzhu.ssm.pojo.GradeCourse;

import java.util.List;

public interface MainService {

    boolean login(String id, String password);
    int regist(String id,String username,String password);
    List<CourseTopic> selectTopic();

    int insertSelect(int[] toid, int sid);

    List<GradeCourse> result();

    int signIn(int sno);

    void getResult(int sno);
}
