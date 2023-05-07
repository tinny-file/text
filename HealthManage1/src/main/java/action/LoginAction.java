package action;
/**
 *用户模块
 */

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import entity.UserRegisterentity;
import entity.Userentity;
import org.apache.struts2.ServletActionContext;
import service.LoginService;
import service.PageService;
import utils.Singleton;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginAction extends ActionSupport implements ModelDriven<UserRegisterentity> {
    //模型驱动使用的对象
    private UserRegisterentity user = new UserRegisterentity();
    private LoginService loginService = (LoginService) Singleton.GetApplicationContext().getBean("LoginServiceImpl");
    @Override
    public UserRegisterentity getModel() {
        return user;
    }

    public void setUser(UserRegisterentity user) {
        this.user = user;
    }

    /**
     * 跳转到登录界面
     */
    public String user_login(){
        return "Login";
    }

    /**
     * AJAX进行异步校验用户名的执行方法
     * */
    public String checkName() throws IOException {
        //调用Service进行查询
        UserRegisterentity userRegisterentity = loginService.findByUser(user.getUsername(),user.getPassword());
        //获取response对象，向页面输出
        HttpServletResponse response = ServletActionContext.getResponse();
        response.setContentType("text/html;charset=UTF-8");
        if(userRegisterentity != null){
            response.getWriter().println("<font color='red'></font>");
        }else{
            response.getWriter().println("<font color='red'>用户名不存在</font>");
        }
        return NONE;
    }


}
