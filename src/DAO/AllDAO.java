package DAO;

import org.springframework.beans.factory.annotation.Autowired;

public class AllDAO {
    public UsersDAO getUsersDAO() {

        return usersDAO;
    }


    public void setUsersDAO(UsersDAO usersDAO) {
        this.usersDAO = usersDAO;
    }
   @Autowired
   UsersDAO usersDAO;
}
