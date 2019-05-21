package cn.pzhu.ssm.controller;

import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@Component
public class StaticFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("我执行了");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request= (HttpServletRequest) servletRequest;
        HttpServletResponse response= (HttpServletResponse) servletResponse;
        String path=request.getServletPath();
        HttpSession session=request.getSession();
        String id= (String) session.getAttribute("id");
        String password= (String) session.getAttribute("password");
        String pa=request.getParameter("id");
        //过滤静态资源
        if(path.endsWith(".js")||path.endsWith(".css")||path.endsWith(".jpg")||path.endsWith(".png")||path.endsWith("woff2")||path.endsWith(".woff")||path.endsWith(".ttf")){
            chain.doFilter(request,response);
            return;
        }
        //过滤登录方法
        else if(path.contains("login")){
            chain.doFilter(request,response);
            return;
        }
        //过滤注册方法
        else if(path.contains("regist")){
            chain.doFilter(request,response);
        }
        else if(id!=null&&password!=null){
            chain.doFilter(request,response);
            return;
        }
        else{
            request.getRequestDispatcher("/jsp/login.jsp").forward(request,response);
        }

    }

    @Override
    public void destroy() {

    }
}
