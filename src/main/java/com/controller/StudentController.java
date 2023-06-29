package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.model.Class_1;
import com.model.Class_2;
import com.model.Student;
import com.service.StudentService;
@Controller
public class StudentController {
	
	@Autowired
	StudentService studentService;
	
	 @RequestMapping("/")
	    public String getAllStudents(Model model) {
	        List<Student> students = studentService.getAllStudents();
	        List<Class_1> classes1 = studentService.getAllClass1Marks();
	        List<Class_2> classes2 = studentService.getAllClass2Marks();
	        
	        System.out.println(students);
	        model.addAttribute("classes1", classes1);
	        model.addAttribute("classes2", classes2);
	        model.addAttribute("students", students);
	        return "viewstudents";
	    }

	@RequestMapping("/addstudent")
	public String showAddStudentForm(Model model)
	{
		model.addAttribute("student", new Student());
		return "addstudent";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public RedirectView saveStudent(@ModelAttribute Student student, HttpServletRequest request,HttpSession session)  
	{
		
		
	Class_1 class1=(Class_1)session.getAttribute("class1");
	student.setClass1(class1);
	
	Class_2 class2 = (Class_2)session.getAttribute("class2");
	student.setClass2(class2);
		
		studentService.addStudent(student);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	
	@RequestMapping("/class1marks")
	public String addclass1marks(Model model)
	{
		model.addAttribute("class1", new Class_1());
		return "class1marks";
	}
	
	@RequestMapping(value = "/savemarks", method = RequestMethod.POST)
	public RedirectView saveclass1Marks(@ModelAttribute Class_1 class1, HttpServletRequest request)  
	{
		
		
		
		studentService.addclass1marks(class1);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	
	@RequestMapping("/class2marks")
	public String addclass2marks(Model model)
	{
		model.addAttribute("class2", new Class_2());
		return "class2marks";
	}
	
	@RequestMapping(value = "/savemarks2", method = RequestMethod.POST)
	public RedirectView saveclass2Marks(@ModelAttribute Class_2 class2, HttpServletRequest request)  
	{
		
		studentService.addclass2marks(class2);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	
	
}
