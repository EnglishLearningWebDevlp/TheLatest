package service;

import org.springframework.beans.factory.annotation.Autowired;

public class AllService {
    public UsersService getUsersService() {
             return usersService;
    }

    public void setUsersService(UsersService usersService) {
        this.usersService = usersService;
    }
    @Autowired
    UsersService usersService;
}
