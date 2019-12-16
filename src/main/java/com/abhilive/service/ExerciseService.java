package com.abhilive.service;

import java.util.List;

import javax.validation.Valid;

import com.abhilive.model.Activity;
import com.abhilive.model.Exercise;

public interface ExerciseService {

	List<Activity> getAllActivities();

	Exercise save(@Valid Exercise exercise);

}