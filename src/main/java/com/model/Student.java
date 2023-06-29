package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
@Entity
public class Student {
	
	    @Id
	    private int studentid;
	    private String studentName;
	    private String fatherName;
	    private String city;
	    
	    @OneToOne
	    Class_1 class1;
	    
	    @OneToOne
	    Class_2 class2;
	    
		public int getStudentid() {
			return studentid;
		}
		public void setStudentid(int studentid) {
			this.studentid = studentid;
		}
		public String getStudentName() {
			return studentName;
		}
		public void setStudentName(String studentName) {
			this.studentName = studentName;
		}
		public String getFatherName() {
			return fatherName;
		}
		public void setFatherName(String fatherName) {
			this.fatherName = fatherName;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public Class_1 getClass1() {
			return class1;
		}
		public void setClass1(Class_1 class1) {
			this.class1 = class1;
		}
		public Class_2 getClass2() {
			return class2;
		}
		public void setClass2(Class_2 class2) {
			this.class2 = class2;
		}
	    
	    

}
