package dao.impl;

import dao.LoginDao;
import entity.UserRegisterentity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository
public class LoginDaoImpl implements LoginDao {
    //提供Hibernate模板
    @Autowired
    @Resource
    private HibernateTemplate hibernateTemplate;

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    //查询是否有该用户
    public UserRegisterentity findByUser(String loginname,String password){
        String sql = "from UserRegisterentity where username = ? and password = ?";
        Object[] con = {loginname,password};
        List<UserRegisterentity> list = (List<UserRegisterentity>) this.getHibernateTemplate().find(sql,con);
        if(list != null && list.size() > 0){
            return list.get(0);
        }
        return null;
    }
}
