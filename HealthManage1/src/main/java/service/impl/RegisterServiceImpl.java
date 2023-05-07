package service.impl;

import dao.RegisterDao;
import entity.UserRegisterentity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.RegisterService;

import javax.annotation.Resource;

@Transactional(readOnly=false)
@Service("RegisterServiceImpl")
public class RegisterServiceImpl implements RegisterService{
    @Autowired
    @Resource
    private RegisterDao registerDao;

    public RegisterDao getRegisterDao() {
        return registerDao;
    }

    public void setRegisterDao(RegisterDao registerDao) {
        this.registerDao = registerDao;
    }

    @Override
    public UserRegisterentity findByUserName(String username) {
        return registerDao.findByUserName(username);
    }

    @Override
    public void save(UserRegisterentity user) {
        user.setCard(0);
        if(user.getSex() == "1"){
            user.setSex("男");
        }else{
            user.setSex("女");
        }
        System.out.println(user.getUsername());
        user.setEmail(user.getEmail());
        user.setUsername(user.getUsername());
        registerDao.save(user);
    }
}
