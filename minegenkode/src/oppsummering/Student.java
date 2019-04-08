package oppsummering;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class Student implements Comparable<Student>, Iterable<Course> {
	
	private String name;
	private int year = 1;
	private List<Course> courses = new ArrayList<>();
	private List<ExamListener> listeners = new ArrayList<>();
	
	public Student(String name) {
		setName(name);
	}
	
	public String getName() {
		return this.name;
	}
	
	public int getYear() {
		if (year < 1 || year > 100) {
			throw new IllegalArgumentException("Invalid year");
		}
		return this.year;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setYear(int year) {
		this.year = year;
	}
	
	public void addCourse(Course course) {
		if (! courses.contains(course)) {
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
	
	public Iterator<Course> iterator(){
		return courses.iterator();
	}

	@Override
	public int compareTo(Student o) {
		return this.getName().compareTo(o.getName());
	}
	
	
	public static void main(String[] args) {
		Student kari = new Student("Kari");
		Student lars = new Student("Lars");
		Student jens = new Student("Jens");
		List<Student> students = Arrays.asList(kari, lars, jens);
		Collections.sort(students);
		
		students.sort((student1, student2) -> student1.getName().compareTo(student2.getName()));
		students.sort((student1, student2) -> student1.getYear() - student2.getYear());
		students.sort(new Comparator<Student>() {
			public int compare(Student o1, Student o2) {
				return o1.getYear() - o2.getYear();
			}
		});
		for (Course course : kari) {
			
		}
	}

}
