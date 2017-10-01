package Action;

import static com.opensymphony.xwork2.Action.SUCCESS;

public class TestAction {
    public String test(){
        System.out.println("Test");
        return SUCCESS;
    }
}
