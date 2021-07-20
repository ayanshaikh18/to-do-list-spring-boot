package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Task;
import com.example.demo.repository.TaskRepo;

@Controller
public class HomeController {

	@Autowired
	private TaskRepo repo;
	
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("index");
		List<Task> tasks = repo.findAll();
		mv.addObject("tasks",tasks);
		return mv;
	}
	
	@PostMapping("/addTask")
	public String addTask(Task task) {
		repo.save(task);
		return "redirect:/";
	}
}