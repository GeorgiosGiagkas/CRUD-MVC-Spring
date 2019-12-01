package controllers;

import dao.TrainerDAO;
import model.Trainer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author giagkas
 */
@Controller 
@RequestMapping(value = "update")
public class UpdateController {
    
    @Autowired
    TrainerDAO dao;
    
    
    
    @RequestMapping(value="show-update-form.htm",method = RequestMethod.GET)
    public String showUpdateForm(ModelMap m, @RequestParam(value="id") String id){  
        Trainer trainer = dao.getTrainerById(Integer.parseInt(id));
        m.addAttribute("trainer",trainer);
        return "update-form";
    }
    
    @RequestMapping(value="update-trainer.htm",method = RequestMethod.POST)
    public String updateTrainer(ModelMap m, @ModelAttribute("trainer") Trainer trainer){        
        dao.updateTrainer(trainer);
        return "redirect:/show-trainers.htm";
    }
    
    
}
