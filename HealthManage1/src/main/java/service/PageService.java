package service;

import entity.UserRegisterentity;

public interface PageService {
    /**
     * 通过id获取信息
     * @param id
     * @return
     */
    UserRegisterentity findById(Integer id);
}
