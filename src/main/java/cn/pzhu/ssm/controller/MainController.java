package cn.pzhu.ssm.controller;

import cn.pzhu.ssm.pojo.CourseTopic;
import cn.pzhu.ssm.pojo.GradeCourse;
import cn.pzhu.ssm.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MainController {
    @Resource(name="mainService")
    private MainService mainService;
    @Autowired
    private HttpServletRequest request;
    //创建ModelAndView，用来存放数据和视图
    ModelAndView modelAndView=new ModelAndView();
    @RequestMapping("login")
    public ModelAndView login(@RequestParam("id") String id,@RequestParam("password") String password){
        Boolean boo=mainService.login(id,password);
        if(boo==true){
            //设置视图jsp，需要设置视图的物理地址
            modelAndView.addObject("id",id);
            modelAndView.setViewName("/jsp/index.jsp");
            HttpSession session=request.getSession();
            session.setAttribute("id",id);
            session.setAttribute("password",password);
        }else{
            modelAndView.setViewName("/jsp/no.jsp");
        }
        return modelAndView;
    }
    @RequestMapping("regist")
    public ModelAndView selectByID(@RequestParam("id") String id,@RequestParam("username") String username, @RequestParam("password") String password){
        //创建ModelAndView，用来存放数据和视图
        ModelAndView modelAndView=new ModelAndView();
        int count=mainService.regist(id,username,password);
        if(count!=0){
            modelAndView.addObject("stuts","注册成功");
            modelAndView.setViewName("/jsp/login.jsp");
        }else{
            modelAndView.addObject("stuts","注册失败");
            modelAndView.setViewName("jsp/regist.jsp");
        }
        return modelAndView;
    }
    @RequestMapping("topic")
    public ModelAndView selectTopic(@RequestParam("id") String id){
        //用来存放数据和视图
        String userid=request.getParameter("id");
        System.out.println(userid);
        ModelAndView modelAndView=new ModelAndView();
        List<CourseTopic> list=mainService.selectTopic();
        modelAndView.addObject("topicList",list);
        modelAndView.addObject("id",id);
        modelAndView.setViewName("jsp/topic.jsp");
        return modelAndView;
    }
    //选课方法
    @RequestMapping("select")
    public ModelAndView select(@RequestParam("ids") int[] ids,@RequestParam("id") int id){
        //用来存放数据和视图
        int count=mainService.insertSelect(ids,id);
        ModelAndView modelAndView=new ModelAndView();
        List<GradeCourse> list=mainService.result();
        modelAndView.addObject("Grade",list);
        modelAndView.addObject("count",count);
        modelAndView.addObject("id",id);
        modelAndView.setViewName("jsp/select.jsp");
        return  modelAndView;
    }

    //查看所选课题信息
    @RequestMapping("look")
    public ModelAndView look(@RequestParam("id") int sno){
        ModelAndView modelAndView=new ModelAndView();
        getResult(sno);
        List<GradeCourse> list=mainService.result();
        modelAndView.addObject("Grade",list);
        modelAndView.addObject("id",sno);
        modelAndView.setViewName("jsp/select.jsp");
        return modelAndView;
    }

    //签到方法
    @RequestMapping("signin")
    public ModelAndView signIn(@RequestParam("id") int sno){
        ModelAndView modelAndView=new ModelAndView();
        int count=mainService.signIn(sno);
        modelAndView.addObject("count",count);
        modelAndView.addObject("id",sno);
        modelAndView.setViewName("jsp/index.jsp");
        return modelAndView;
    }

    //得到总成绩
    @RequestMapping("result")
    public void getResult(@RequestParam("id") int sno){
        mainService.getResult(sno);
    }
}
