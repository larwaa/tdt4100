package of3;

public class Student {
	
	private String studentId;
	private String name;
	private int age;
	private static int noOfStudents;
	private char gender;
	
	
	
	public Student(String studentId, String name, int age, char gender) {
		setStudentId(studentId);
		setAge(age);
		setName(name);
		setGender(gender);
	}
	
	public String getStudentId() {
		return studentId;
	}
	
	public void setStudentId(String studentId) {
		// 7 tegn langt
		// to store bokstaver, 5 tall
		this.studentId = studentId;
	}
	
	private void checkStudentId(String studentId) {
		if (studentId.length() != 7) {
			throw new IllegalArgumentException("Student-ID må være 7 tegn langt.");
		}
		
		for(int i = 0; i < 2; i++) {
			if (! (Character.isUpperCase(studentId.charAt(i)))) {
				throw new IllegalArgumentException("De to første tegnene må være store bokstaver.");
			}
		}
		
		for (int i=2; i<7; i++) {
			if (! (Character.isDigit(studentId.charAt(i)))) {
				throw new IllegalArgumentException("De siste fem tegnene må være tall.");
			}
		}
		
		
	}
	
	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		if (age < 17 || age > 121) {
			throw new IllegalArgumentException("Ugyldig alder");
		}
		this.age = age;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public char getGender() {
		return gender;
	}
	
	public void setGender(char gender) {
		if (!(gender == 'M' || gender == 'F' || gender == '\0')) {
			throw new IllegalArgumentException("Ugyldig kjønn");
		}
		this.gender = gender;
		
	}
	
	public int getNoOfStudents() {
		return noOfStudents;
	}
	
	public static void main(String[] args) {
		Student lars = new Student("LOL9393", "Lars Waage", 22, 'M');
		System.out.println(lars.getStudentId());
	}
	

}
