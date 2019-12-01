package controllers;

import dao.TrainerDAO;
import java.util.List;
import model.Trainer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author giagkas
 */
@Controller 
@RequestMapping(value="find")
public class FindController {
    
    @Autowired
    TrainerDAO dao;
    
    @RequestMapping(value="find-trainer-page.htm", method=RequestMethod.GET)
    public String showFindTrainerPage(ModelMap m){
        return "find-form";
    }
    
    @RequestMapping(value="find-trainer.htm" , method = RequestMethod.POST)
    public String showResult(ModelMap m,@RequestParam(value="first-name", required = true) String firstName,
            @RequestParam(value="last-name", required = true) String lastName){
        List<Trainer> trainers;
        trainers = dao.getTrainersByName(firstName, lastName);
        m.addAttribute("trainers",trainers);
        
        m.addAttribute("h1","No Trainer Found");
        m.addAttribute("h4","Please check spelling, or that trainer does not exit!");
        
        return "trainer-list";
    }
}
