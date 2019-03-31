package oppsummeringforberedelse;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class Course {
	
	private String subject;
	private int year;
	private List<Student> students = new ArrayList<>();
	private Date exam;
	private List<ExamListener> listeners = new ArrayList<>();
	
	
	public Course(String subject, int year, Date exam) {
		super();
		this.year = year;
		this.subject = subject;
		this.exam = exam;
	}
	
	
	public Course(String subject, int year) {
		super();
		this.subject = subject;
		this.year = year;
	}
	
	public void addListener(ExamListener  l) {
		listeners.add(l);
	}
	
	public void removeListener(ExamListener l) {
		listeners.remove(l);
	}
	
	public void fireDateChanged(Date date) {
		listeners.forEach(listener -> listener.examDateChanged(this, date));
	}


	public Date getExam() {
		return exam;
	}
	public void setExam(Date exam) {
		if(exam == null) {
			this.exam = exam;
			this.fireDateChanged(exam);
			return;
		}
		List<Integer> possibleMonths = Arrays.asList(5, 6, 11, 12);
		if (!possibleMonths.contains(exam.getMonth()) || exam.before(new Date())) {
			throw new IllegalArgumentException("Invalid exam date");
		}
		this.exam = exam;
		this.fireDateChanged(exam);
	}
	public String getSubject() {
		return subject;
	}
	public int getYear() {
		return year;
	}
	
	public void addStudent(Student student) {
		if (!students.contains(student)) {
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
	
	
	
}
