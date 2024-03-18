package com.webApplication.toDoList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class ToDoService {
	
	@Autowired
	ToDoRepository repo;
	
	public List<ToDoList> get(){
		return repo.findAll();
	}
	
	public void add(ToDoList item) {
		repo.save(item);
	}
	
	
	
	public void status(int id) {
		ToDoList item = repo.getById(id);
		if(item.getStatus().equals("Incomplete"))
			item.setStatus("Completed");
		else
			item.setStatus("Incomplete");
		repo.save(item);
	}
	
	public void delete(int id) {
		
		repo.delete(repo.getById(id));
	}
	
	public void edit(int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("item", repo.getById(id));
	}

}
