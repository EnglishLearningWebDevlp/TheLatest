package Action;

import org.springframework.beans.factory.annotation.Autowired;
import service.AllService;

public class BaseAction {
    public AllService getAllService() {
             return allService;
    }

    public void setAllService(AllService allService) {
        this.allService = allService;
    }
    @Autowired
    private AllService allService;

}
