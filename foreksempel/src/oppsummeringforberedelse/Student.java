package oppsummeringforberedelse;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Student implements Comparable<Student>, Iterable<Course>{
	
	
	private String name;
	private int year;
	private List<Course> courses = new ArrayList<>();
	
	public Student(String name) {
		this.name = name;
		this.year = 1;
	}
	
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		if (year < 0 ) {
			throw new IllegalArgumentException("Year must be larger than 0");
		}
		this.year = year;
	}
	public String getName() {
		return name;
	}
	
	public void addCourse(Course course) {
		if (!courses.contains(course)) {
			courses.add(course);
			course.addStudent(this);
		}
	}
	
	public void removeCourse(Course course) {
		if (courses.contains(course)) {
			courses.remove(course);
			course.removeStudent(this);
		}
	}
	
	public String toString() {
		String s =  "Student " + name + " tar følgende fag: \n";
		for (Course course: courses) {
			s += course.getSubject() + "\n";
		}
		return s;
	}

	@Override
	public int compareTo(Student o) {
		return this.name.compareTo(o.name);
	}

	@Override
	public Iterator<Course> iterator() {
		// TODO Auto-generated method stub
		return courses.iterator();
	}
	
	public List<Course> getCourses() {
		return new ArrayList<>(this.courses);
	}
	
	
}
