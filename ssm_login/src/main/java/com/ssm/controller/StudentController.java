package com.ssm.controller;

import com.ssm.domain.Student;
import com.ssm.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping("/index")
    public String index(){
        return "redirect:/index.jsp";
    }


    @RequestMapping("/start")
    public String start(){
        return "userlogin";
    }

    //登录
    @RequestMapping(value = "/stulogin",method = {RequestMethod.POST})
    public String stuLogin(@RequestParam("account")  String account,String radioRemeber, HttpServletRequest request){
        String s = request.getParameter("account");
        System.out.println(s);
        String radio = request.getParameter("radioRemeber");
        System.out.println(radio);
        //1.判断用户输入的账号是否空
        if (account == null || account.equals("")) {
            request.setAttribute("msg", "账号不能为空！");
            return "userlogin";
        } else {
            Student student = studentService.findStudent(account);
            if (student!=null){
                //如果用户名存在,再验证密码是否正确
                String pwd = request.getParameter("pwd");
                if(student.getStuPassword().equals(pwd)){

                    request.setAttribute("student",student);
                    request.getSession().setAttribute("stuInfo",student);
                    return "success";
                }else {
                    request.setAttribute("msg","输入密码错误！");
                    return "userlogin";
                }
            }else {
                request.setAttribute("msg","账号不存在！");
                return "userlogin";
            }
        }
    }



    @RequestMapping("/clearSession")
    public ModelAndView clearSession(HttpSession session, HttpServletRequest request, HttpServletResponse response, SessionStatus sessionStatus) throws IOException {
        session.removeAttribute("stuInfo");
        sessionStatus.setComplete();
        ModelAndView mv = new ModelAndView("redirect:/index.jsp");
        return mv;
    }

}
