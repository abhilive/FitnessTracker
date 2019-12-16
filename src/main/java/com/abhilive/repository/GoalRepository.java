package com.abhilive.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abhilive.model.Goal;

@Repository("goalRepository")
public interface GoalRepository extends JpaRepository<Goal, Long> {
	
	List<GoalRepository> findAllGoalReports();
}
