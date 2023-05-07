package action;

import com.opensymphony.xwork2.ActionSupport;
import entity.UserRegisterentity;
import service.PageService;
import utils.Singleton;

public class PageAction extends ActionSupport {
    //获取前台的id
    private Integer id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    private PageService testService = (PageService) Singleton.GetApplicationContext().getBean("PageServiceImpl");
    /**
     * 进入登录界面
     * @return
     */
    public String login(){
        return "success";
    }

//    public String loginconrtoller(){
//        //根据id进行查询
//        UserRegisterentity testEntity =  testService.findById(this.id);
//        if (testEntity!=null){
//            System.out.println("id是："+testEntity.getId()+"\t"+"name是："+testEntity.getName());
//            return "success";
//        }
//        return "fail";
//    }
}
