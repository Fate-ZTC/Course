package cn.pzhu.ssm.mapper;

import cn.pzhu.ssm.pojo.GradeCourse;

import java.util.List;

public interface GradeMapper {
    int insertSelect(int cid,int sid);

    List<GradeCourse> selectGrade();

    int signIn(int sno);

    void getResult(int sno);

    int countSignIn(int sno);
}
