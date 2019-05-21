package cn.pzhu.ssm.mapper;

import cn.pzhu.ssm.pojo.CourseTopic;

import java.util.List;

public interface CourseMapper {
    List<CourseTopic> selectTopic();
}
