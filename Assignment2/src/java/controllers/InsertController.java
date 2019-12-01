package controllers;


import dao.TrainerDAO;

import model.Trainer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



/**
 *
 * @author giagkas
 */

@Controller 
@RequestMapping(value="insert")
public class InsertController {
    
    @Autowired
    private TrainerDAO   dao;
    
    @RequestMapping(value = "show-insert-form", method=RequestMethod.GET)
    public String showInsertForm(ModelMap m){
        Trainer trainer = new Trainer();
        m.addAttribute("trainer",trainer);
        return "insert-form";
    }
    
    @RequestMapping(value = "insert-trainer", method = RequestMethod.POST)
    public String insertTrainer( @ModelAttribute("trainer") Trainer trainer) {        
        dao.insertTrainer(trainer);
        
        return "redirect:/show-trainers.htm";
        
    }
    

}
