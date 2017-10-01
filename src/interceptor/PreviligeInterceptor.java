package interceptor;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class PreviligeInterceptor extends AbstractInterceptor {
    private static final long serialVersionID=1L;
    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        ActionContext actionContext=actionInvocation.getInvocationContext();
        Object user=actionContext.getSession().get("user");
        if(user!=null){
            return actionInvocation.invoke();
        }
        else {
            actionContext.put("msg","您还未登录，请先登陆");
            return Action.LOGIN;
        }
    }
}
