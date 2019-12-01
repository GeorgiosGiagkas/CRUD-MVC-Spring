package controllers;

import dao.TrainerDAO;
import java.util.List;
import model.Trainer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author giagkas
 */
@Controller 
public class ShowController {
    
    @Autowired
    TrainerDAO dao;
    
    
    @RequestMapping(value="show-trainers")
    public String showTrainers(ModelMap m){
        List<Trainer> trainers = dao.getAllTrainers();
        m.addAttribute("trainers", trainers);              
        m.addAttribute("h1","List Is Empty");        
        m.addAttribute("h4","Please Enter Trainer in Add Trainer Menu");
                
        return "trainer-list";
    }
    
}
