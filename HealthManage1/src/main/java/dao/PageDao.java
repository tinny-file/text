package dao;


import entity.UserRegisterentity;

public interface PageDao {
    /**
     * 通过id获取信息
     * @param id
     * @return
     */
    UserRegisterentity findById(Integer id);
}
