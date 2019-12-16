package com.abhilive.service;

import java.util.List;

import com.abhilive.model.Goal;

public interface GoalService {
	
	Goal save(Goal goal);

	List<Goal> findAllGoals();
}
