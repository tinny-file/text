package dao;

import entity.UserRegisterentity;

public interface LoginDao {
    UserRegisterentity findByUser(String username,String password);
}
