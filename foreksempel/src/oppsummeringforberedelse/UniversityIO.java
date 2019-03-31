package oppsummeringforberedelse;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Scanner;
import java.util.stream.Collectors;

public class UniversityIO {

	public void saveUniversity(List<Student> students, String filename) throws FileNotFoundException {
		PrintWriter writer = new PrintWriter(filename);

		List<Course> courses = students.stream().flatMap(s -> s.getCourses().stream()).distinct()
				.collect(Collectors.toList());
		List<Course> alternativeCourses = new ArrayList<>();
		for (Student s : students) {
			for (Course course : s) {
				if (!alternativeCourses.contains(course)) {
					alternativeCourses.add(course);
				}
			}
		}
		for (Course course : courses) {
			writer.println(String.format("%s;%s;%s", course.getSubject(), course.getYear(), course.getExam()));
		}
		writer.println("-----");

		for (Student student : students) {
			String c = ";";
			for (Course course : student) {
				c += course.getSubject() + "," + course.getYear() + ";";
			}

			writer.println(student.getName() + ";" + student.getYear() + c);
		}
	
		writer.close();
	}

	public List<Student> loadStudents(String filename) throws FileNotFoundException, NumberFormatException, ParseException {
		Scanner scanner = new Scanner(new File(filename));
		boolean isCourse = true;
		List<Course> courses = new ArrayList<>();
		List<Student> students = new ArrayList<>();
		while (scanner.hasNextLine()) {
			String line = scanner.nextLine();
			if (line.equals("-----")) {
				isCourse = false;
				continue;
			}
			if (isCourse) {
				String[] courseInfo = line.split(";");
				courses.add(new Course(courseInfo[0], Integer.parseInt(courseInfo[1]), 
							new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy").parse(courseInfo[2])));
			}

			else {
				String[] studentInfo = line.split(";");
				Student s = new Student(studentInfo[0]);
				s.setYear(Integer.parseInt(studentInfo[1]));
				for (int i = 2; i < studentInfo.length; i++) {
					String[] course = studentInfo[i].split(",");
					Course c = courses.stream().filter(
							co -> co.getSubject().equals(course[0]) && co.getYear() == Integer.parseInt(course[1]))
							.findFirst().get();
					s.addCourse(c);
					students.add(s);
				}
			}
		}
		scanner.close();
		return students;
	}
}
