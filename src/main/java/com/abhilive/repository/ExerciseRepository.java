package com.abhilive.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abhilive.model.Exercise;

public interface ExerciseRepository extends JpaRepository<Exercise, Long>{

}
