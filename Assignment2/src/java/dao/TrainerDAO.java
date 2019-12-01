/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import model.Trainer;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author giagkas
 */
@Repository
public class TrainerDAO {
    
    //inject database connection:
    @PersistenceContext
    private EntityManager em;
    
    @Transactional
    public void insertTrainer(Trainer trainer){       
        em.persist(trainer);        
    }
    
    @Transactional
    public Trainer getTrainerById(int id){
        Trainer trainer;
        trainer=em.find(Trainer.class, id);
        
        return  trainer;
    }
    
    @Transactional
    public List<Trainer> getTrainersByName(String firstName, String lastName){
        List<Trainer> trainers; 
        Query q = em.createQuery("SELECT t FROM Trainer t WHERE t.firstName = :firstName AND t.lastName= :lastName");
        q.setParameter("firstName", firstName);
        q.setParameter("lastName", lastName);
        trainers = q.getResultList();
        return  trainers;
    }
    
    
    @Transactional
    public void deleteTrainerById(int id){  
        Trainer trainer = em.find(Trainer.class, id);
        em.remove(trainer);
               
    }
    
    
    @Transactional
    public void updateTrainer(Trainer trainer){
        em.merge(trainer);
    }
    
    
    @Transactional
    public List<Trainer> getAllTrainers(){
        List<Trainer> trainers;
        Query q = em.createNamedQuery("Trainer.findAll");
        trainers = q.getResultList();
        return trainers;
    }
    
}
