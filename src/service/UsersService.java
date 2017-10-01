package service;

import DAO.AllDAO;
import bean.UsersEntity;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class UsersService {
    public void setAll_dao(AllDAO all_dao) {
        this.all_dao = all_dao;
    }

    public AllDAO getAll_dao() {
        return all_dao;
    }

    @Autowired
    AllDAO all_dao;

    public List get_user_all(){
        return this.all_dao.getUsersDAO().findAll();
    }
    public void Save_User(UsersEntity userEntity){
        this.getAll_dao().getUsersDAO().save(userEntity);
    }
    public UsersEntity Find_By_Id(String ID){
        return this.all_dao.getUsersDAO().findById(ID);
    }
}
