package oppsummering;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Scanner;

public class UniversityIO {
	
	String separator = ("-----------------------------");
	
	public void save(List<Student> students, String filename) throws FileNotFoundException {
		PrintWriter writer = new PrintWriter(filename);
		List<Course> courses = new ArrayList<>();
		
		for (Student student : students) {
			for (Course course : student) {
				if (! courses.contains(course)) {
					courses.add(course);
				}
			}	
		}
		
		for (Course course : courses) {
			writer.println(String.format("%s;%s;%s", course.getSubject(), course.getYear(), course.getExam()));
		}
		
		writer.println(separator);
		
		for (Student student : students) {
			String c = "";
			for (Course course : student) {
				c += String.format("%s,%s;", course.getSubject(), course.getYear());
			}
			writer.println(String.format("%s;%s;%s", student.getName(), student.getYear(), c));
		}
		
		writer.close();
	}
	
	public List<Student> loadStudents(String filename) throws FileNotFoundException {
		Scanner scanner = new Scanner(new File(filename));
		List<Student> students = new ArrayList<>();
		List<Course> courses = new ArrayList<>();
		boolean isCourse = true;
		
		while(scanner.hasNextLine()) {
			String line = scanner.nextLine();
			
			if (line.equals(separator)) {
				isCourse = false;
				continue;
			}
			
			if (isCourse) {
				String[] courseInfo = line.split(";");
				courses.add(new Course(courseInfo[0], Integer.parseInt(courseInfo[1])));
			} else {
				String[] studentInfo = line.split(";");
				Student s = new Student(studentInfo[0]);
				s.setYear(Integer.parseInt(studentInfo[1]));
				
				for (int i = 2; i < studentInfo.length; i++) {
					String[] courseInfo = studentInfo[i].split(",");
					Course c = courses.stream()
								.filter((course) -> course.getSubject().equals(courseInfo[0]) 
													&& course.getYear() == Integer.parseInt(studentInfo[1]))
								.findFirst()
								.get();
					s.addCourse(c);
				}
			}
		}
		
		
		return students;
		
	}

}
