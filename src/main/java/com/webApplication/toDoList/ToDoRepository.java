package com.webApplication.toDoList;

import java.util.Date;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ToDoRepository extends JpaRepository<ToDoList, Integer> {
//	@Query("insert into to_do_list (task, description, date, status) values (:task , :description , :date , :status)")
//	void saveItem(@Param("task") String task,@Param("description") String description, @Param("date") Date date, @Param("status") String status);

}
