package oppsummeringforberedelse;

import java.io.File;
import java.io.FileNotFoundException;
import java.text.ParseException;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

public class University {
	
	
	public static void main(String[] args) {
		Student s1 = new Student("Ola");
		Student s2 = new Student("Kari");
		Student s3 = new Student("Vegard");
		Student s4 = new Student("Truls");
		Student s5 = new Student("Ingrid");
		
		s3.setYear(5);
		s5.setYear(3);
		
		List<Student> students = Arrays.asList(s1, s2, s3, s4, s5);
		students.sort((student1, student2) -> student1.getYear() - student2.getYear());
		students.sort(new Comparator<Student>() {

			@Override
			public int compare(Student o1, Student o2) {
				if (o1.getYear() == o2.getYear()) {
					return o1.getName().compareTo(o2.getName()) ;
				}
				return o1.getYear() - o2.getYear();
			}
			
		});
		
		Course java = new Course("Java", 2019, new Date());
		Course matte3 = new Course("Matte 3", 2019, new Date());

		s1.addCourse(java);
		s2.addCourse(java);
		s3.addCourse(java);
		s4.addCourse(java);
		s5.addCourse(java);
		s2.addCourse(matte3);
		
		UniversityIO io = new UniversityIO();
		String rootPath = new File("").getAbsolutePath();
		rootPath += "/src/oppsummeringforberedelse/universitet.txt";
		try {
			io.saveUniversity(students, rootPath);
		} catch (FileNotFoundException | NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		List<Student> loadedStudents = null;
		try {
			loadedStudents = io.loadStudents(rootPath);
		} catch (FileNotFoundException | ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		loadedStudents.forEach(student -> System.out.println(student));


		
	}
}
