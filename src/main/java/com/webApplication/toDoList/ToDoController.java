package com.webApplication.toDoList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ToDoController {
	
	
	
	@Autowired
	ToDoService service;
	
	@ModelAttribute
	public void modelData(Model m) {
		m.addAttribute("list", service.get());
	}
	@GetMapping("/")
	public String home() {
		
		return "toDoview.jsp";
	}
	
	@RequestMapping("/add")
	public String addToDoItem(@ModelAttribute("item")ToDoList item) {
		service.add(item);
		return "redirect:/";
	}
	
	
	@GetMapping("/markComplete/{id}")
	public String updateStatus(@PathVariable("id") int id) {
		service.status(id);
		return "redirect:/";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") int id) {
		service.delete(id);
		return "redirect:/";
	}
	
	@GetMapping("/edit/{id}")
	public String editSub(@PathVariable("id") int id) {
		
		service.edit(id);
		service.delete(id);
		return "redirect:/sub";
	}
	@RequestMapping("/sub")
	public String sub() {
		
		return "toDoEdit.jsp";
	}
	@RequestMapping("/edit")
	public String edit(@ModelAttribute("item")ToDoList item) {
		
		service.add(item);
		
		return "redirect:/";
	}
}
