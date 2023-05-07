package dao;

import entity.UserRegisterentity;

public interface RegisterDao {
    UserRegisterentity findByUserName(String username);
    void save(UserRegisterentity userRegisterentity);
}
