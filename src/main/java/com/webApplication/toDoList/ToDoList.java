package com.webApplication.toDoList;

import java.util.Date;


import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="to_do_list")
public class ToDoList {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	String task;
	String description;
	
	@DateTimeFormat(pattern= "yyyy-MM-dd")
	Date date;
	
	String status;

	public long getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTask() {
		return task;
	}

	public void setTask(String task) {
		this.task = task;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "ToDoList [id=" + id + ", task=" + task + ", description=" + description + ", date=" + date + ", status="
				+ status + "]";
	}
	
}
