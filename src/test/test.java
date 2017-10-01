package test;

import Action.UsersAction;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

class Test {
    public static void main(String[] args)
    {
        ApplicationContext ac = new FileSystemXmlApplicationContext("web/WEB-INF/applicationContext.xml");
        UsersAction usersAction = (UsersAction) ac.getBean("user_action");
        usersAction.setUserid("89889");
        usersAction.setPassword("sssss");
        System.out.println(usersAction.Login());
    }
}
