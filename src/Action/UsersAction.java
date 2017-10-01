package Action;

import DAO.UsersDAO;
import bean.UsersEntity;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import utils.CookieUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.Map;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.NONE;
import static com.opensymphony.xwork2.Action.SUCCESS;

public class UsersAction extends BaseAction implements ServletRequestAware,
        ServletResponseAware, SessionAware {
    private String userid;
    private String password;
    private String nickname;
    public static final String USER_SESSION = "user.session";
    private CookieUtils cookieUtils = new CookieUtils();
    private Map<String, Object> session;
    private HttpServletResponse response;
    private HttpServletRequest request;
    private UsersDAO usersDAO;
    public String createUser(){
        UsersEntity userEntity=new UsersEntity();
        userEntity.setUserid(getUserid());
        userEntity.setPassword(getPassword());
        userEntity.setNickname(getNickname());

        this.getAllService().getUsersService().Save_User(userEntity);
        return SUCCESS;
    }
    public String Login(){
        usersDAO=this.getAllService().getUsersService().getAll_dao().getUsersDAO();
        if (cookieUtils.getCookie(request, usersDAO)) {
            return SUCCESS;
        }
        UsersEntity usersEntity=this.getAllService().getUsersService().Find_By_Id(getUserid());
        if(usersEntity==null)  return NONE;

        if(usersEntity.getPassword().equals(getPassword())){
            Cookie cookie = cookieUtils.addCookie(usersEntity);
            response.addCookie(cookie);
            session.put(USER_SESSION, usersEntity);
            return SUCCESS;
        }
        else return ERROR;

    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }


    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        this.request=httpServletRequest;
    }

    @Override
    public void setServletResponse(HttpServletResponse httpServletResponse) {
        this.response=httpServletResponse;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.session = map;
    }
}
