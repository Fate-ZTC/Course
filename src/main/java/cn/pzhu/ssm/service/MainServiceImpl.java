package cn.pzhu.ssm.service;

import cn.pzhu.ssm.mapper.CourseMapper;
import cn.pzhu.ssm.mapper.GradeMapper;
import cn.pzhu.ssm.mapper.StudentMapper;
import cn.pzhu.ssm.pojo.CourseTopic;
import cn.pzhu.ssm.pojo.GradeCourse;
import cn.pzhu.ssm.pojo.Student;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("mainService")
public class MainServiceImpl implements MainService {
    @Resource
    private StudentMapper studentMapper;
    @Resource
    private CourseMapper courseMapper;
    @Resource
    private GradeMapper gradeMapper;

    //登录方法
    @Override
    public boolean login(String id, String password) {
        List<Student> list = studentMapper.selectByExample(null);
        int ids=Integer.parseInt(id);
            for (Student stu:list) {
                if(ids==stu.getSid()&&password.equals(stu.getSpassword().toString())){
                    return true;
                }
            }
        return false;
    }
    //注册方法
    @Override
    public int regist(String id,String username,String password){
        int count=0;
        Student stu=new Student();
        int ids=Integer.parseInt(id);
        int passwords=Integer.parseInt(password);
        stu.setSid(ids);
        stu.setSname(username);
        stu.setSpassword(passwords);
        count=studentMapper.insert(stu);
        return count;
    }
    //查看课题
    @Override
    public List<CourseTopic> selectTopic() {
        List<CourseTopic> list=courseMapper.selectTopic();
        return list;
    }
    //选择课题
    @Override
    public int insertSelect(int[] cid, int sid) {
        int count=0;
        for (int i:cid) {
            gradeMapper.insertSelect(i,sid);
            count++;
        }
        return count;
    }
    //查看选课
    @Override
    public List<GradeCourse> result() {
        List<GradeCourse> list=gradeMapper.selectGrade();
        return list;
    }
    //签到
    @Override
    public int signIn(int sno) {
        int countSignIn=gradeMapper.countSignIn(sno);
        int count=0;
        if(countSignIn<10) {
            count = gradeMapper.signIn(sno);
        }
        else{
            count=-1;
        }
        return count;
    }
    //得到总成绩
    @Override
    public void getResult(int sno) {
        gradeMapper.getResult(sno);
    }


}
