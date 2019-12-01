package controllers;

import dao.TrainerDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


/**
 *
 * @author giagkas
 */

@Controller 
@RequestMapping(value="delete")
public class DeleteController {
    
    @Autowired
    TrainerDAO dao;
    
    
    @RequestMapping(value="delete-trainer.htm", method=RequestMethod.GET)
    public String deleteTrainer(@RequestParam(value="id") String id){               
        dao.deleteTrainerById(Integer.parseInt(id));
        return "redirect:/show-trainers.htm";
    }
}
