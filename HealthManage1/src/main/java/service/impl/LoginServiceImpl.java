package service.impl;

import dao.LoginDao;
import entity.UserRegisterentity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.LoginService;

import javax.annotation.Resource;

@Service("LoginServiceImpl")
public class LoginServiceImpl implements LoginService {
    @Autowired
    @Resource
    private LoginDao loginDao;

    public void setLoginDao(LoginDao loginDao) {
        this.loginDao = loginDao;
    }

    public LoginDao getLoginDao() {
        return loginDao;
    }

    @Override
    public UserRegisterentity findByUser(String username,String password) {
        return loginDao.findByUser(username,password);
    }
}
