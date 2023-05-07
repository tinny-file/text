package action;
/**
 * 用户模块Action类
 */

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import entity.UserRegisterentity;
import org.apache.struts2.ServletActionContext;
import service.RegisterService;
import utils.Singleton;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegisterAction extends ActionSupport implements ModelDriven<UserRegisterentity> {

    //模型驱动使用的对象
    private UserRegisterentity user = new UserRegisterentity();
    private RegisterService registerService = (RegisterService) Singleton.GetApplicationContext().getBean("RegisterServiceImpl");
    @Override
    public UserRegisterentity getModel() {
        return user;
    }

    public void setUser(UserRegisterentity user) {
        this.user = user;
    }
    /**
     * 跳转到注册界面
     */
    public String register(){
        return "Register";
    }
    /**
     * AJAX进行异步校验用户名的执行方法
     * */
    public String check() throws IOException {
        //调用Service进行查询
        UserRegisterentity userRegisterentity = registerService.findByUserName(user.getUsername());
        //获取response对象，向页面输出
        HttpServletResponse response = ServletActionContext.getResponse();
        response.setContentType("text/html;charset=UTF-8");
        if(userRegisterentity != null){
            response.getWriter().println("<font color='red'>用户名已存在</font>");
        }else{
            response.getWriter().println("<font color='green'>用户名可以使用</font");
        }
        return NONE;
    }

    //将数据保存到数据库
    public String regist(){
        registerService.save(user);
        return "success";
    }
}
