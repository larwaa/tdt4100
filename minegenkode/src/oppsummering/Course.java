package oppsummering;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class Course {
	
	private final String subject;
	private final int year;
	private Date exam;
	private List<Student> students = new ArrayList<>();
	private List<ExamListener> listeners = new ArrayList<>();
	
	public Course(String subject, int year) {
		this.year = year;
		this.subject = subject;
	}
	
	public String getSubject() {
		return subject;
	}
	
	public int getYear() {
		return year;
	}
	
	public void setExam(Date exam) {
		
		List<Integer> possibleMonths = Arrays.asList(4, 5, 10, 11);
		if (!possibleMonths.contains(exam.getMonth()) || exam.before(new Date())) {
			throw new IllegalArgumentException("Invalid month");
		}
		this.exam = exam;
	}
	
	public Date getExam() {
		return exam;
	}
	
	public void addStudent(Student student) {
		if (! students.contains(student)) {
			students.add(student);
			student.addCourse(this);
		}
	}
	
	public void removeStudent(Student student) {
		if (students.contains(student)) {
			students.remove(student);
			student.removeCourse(this);
		}
	}
	
	public void addListener(ExamListener listener) {
		listeners.add(listener);
	}
	
	public void removeListener(ExamListener listener) {
		listeners.remove(listener);
	}
	
	public void fireDateChanged() {
		listeners.forEach(listener -> listener.examDateChanged(this, this.exam));
	}
	

}
