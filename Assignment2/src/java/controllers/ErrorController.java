package controllers;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author giagkas
 */

@Controller 
public class ErrorController {
    
    @RequestMapping(value = "error.htm")
    public String showErrorPage404(HttpServletRequest request){
        String page="redirect:/redirect.jsp";
        int errorCode = getErrorCode(request);
        switch(errorCode){
            case 404:
                page="error-page-404";
                break;
            case 500:
                page="error-page-500";
                break;
        }
        return page;
    }
    
    private int getErrorCode(HttpServletRequest request){
        return (int) request.getAttribute("javax.servlet.error.status_code");        
    }
    
    
}
