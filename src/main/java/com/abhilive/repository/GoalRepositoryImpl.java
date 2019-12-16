package com.abhilive.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.abhilive.model.Goal;

@Repository("goalRepository")
public class GoalRepositoryImpl implements GoalRepository {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Goal save(Goal goal) {
		
		if(goal.getId() != 0) {
			em.persist(goal);
			
			em.flush();
		} else {
			goal = em.merge(goal);
		}
		
		return null;
	}

	@SuppressWarnings({"rawtypes", "unchecked"})
	@Override
	public List<Goal> loadAll() {
		Query query = em.createQuery("Select g from Goal g");
		
		List goals = query.getResultList();
		
		return goals;
	}

}
