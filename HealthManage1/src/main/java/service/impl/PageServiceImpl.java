package service.impl;

import dao.impl.PageDaoImpl;
import entity.UserRegisterentity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.PageService;

import javax.annotation.Resource;

@Service("PageServiceImpl")
public class PageServiceImpl implements PageService {
    @Autowired
    @Resource
    private PageDaoImpl testDao;

    public PageDaoImpl getTestDao() {
        return testDao;
    }

    public void setTestDao(PageDaoImpl testDao) {
        this.testDao = testDao;
    }

    @Override
    public UserRegisterentity findById(Integer id) {
        return testDao.findById(id);
    }
}
