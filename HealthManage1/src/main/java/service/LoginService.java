package service;

import entity.UserRegisterentity;

public interface LoginService {
    UserRegisterentity findByUser(String username,String password);
}
