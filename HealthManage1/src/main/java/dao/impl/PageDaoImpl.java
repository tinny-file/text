package dao.impl;

import dao.PageDao;
import entity.UserRegisterentity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository
public class PageDaoImpl implements PageDao {
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
    public UserRegisterentity findById(Integer id) {
        return this.hibernateTemplate.get(UserRegisterentity.class, id);
    }
}
