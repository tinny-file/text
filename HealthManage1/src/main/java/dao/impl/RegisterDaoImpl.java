package dao.impl;

import dao.RegisterDao;
import entity.UserRegisterentity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository
public class RegisterDaoImpl implements RegisterDao {
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

    @Override
    public UserRegisterentity findByUserName(String loginname) {
        String sql = "from UserRegisterentity where username = ?";
        List<UserRegisterentity> list = (List<UserRegisterentity>) this.getHibernateTemplate().find(sql,loginname);
        if(list != null && list.size() > 0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public void save(UserRegisterentity userRegisterentity) {
        this.getHibernateTemplate().save(userRegisterentity);
    }
}
