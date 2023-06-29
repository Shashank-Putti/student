package com.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Service;

import com.model.Class_1;
import com.model.Class_2;
import com.model.Student;

@Service
@Transactional
public class StudentService {
	@Autowired
	HibernateTemplate hibernateTemplate;

	    public void addStudent(Student student) {
	        hibernateTemplate.save(student);
	    }
	    
	    public List<Student> getAllStudents() {
	        return hibernateTemplate.loadAll(Student.class);
	    }
	    
	    
	    public void addclass1marks(Class_1 class1) {
	        hibernateTemplate.save(class1);
	    }
	    
	    public void addclass2marks(Class_2 class2) {
	        hibernateTemplate.save(class2);
	    }
	    
	 
	    
	    public List<Class_1> getAllClass1Marks() 
	    {
			return this.hibernateTemplate.loadAll(Class_1.class);
		}
	    
	    
	    public List<Class_2> getAllClass2Marks() 
	    {
			return this.hibernateTemplate.loadAll(Class_2.class);
		}
	    
	   
	    

}
