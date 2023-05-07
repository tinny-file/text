package service;

import entity.UserRegisterentity;

public interface RegisterService {
    UserRegisterentity findByUserName(String username);
    void save(UserRegisterentity user);
}
