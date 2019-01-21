package of3;

public class Student {
	
	private String studentId;
	private String name;
	private int age;
	private char gender;
	private static int noOfStudents;
	
	
	
	
	public Student(String studentId, String name, int age, char gender) {
		setStudentId(studentId);
		setName(name);
		setAge(age);
		this.setGender(gender);
	}
	
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		
		checkStudentId(studentId);
		this.studentId = studentId;
	}
	private void checkStudentId(String studentId) {
		// 7 tegn langt, 2 store bokstaver, 5 tall
		if(studentId.length() != 7) {
			throw new IllegalArgumentException("Må være 7 tegn");
		}
		for(int i = 0; i<2; i++) { //for i in range(0, 2, 1)
			if(!Character.isUpperCase(studentId.charAt(i))) {
				throw new IllegalArgumentException("Må starte med to store bokstaver");
			}
		}
		for(int i = 2; i<studentId.length(); i++) {
			if(!Character.isDigit(studentId.charAt(i))) {
				throw new IllegalArgumentException("Må avslutte med 5 tall");
			}
		}
		
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		if(age<17 || age > 121) {
			throw new IllegalArgumentException("Ugyldig alder");
		}
		this.age = age;
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		if (!(gender == 'M' || gender == 'F' || gender == '0')) {
			throw new IllegalArgumentException("Ugyldig kjønn");
		}
		this.gender = gender;
	}
	public static int getNoOfStudents() {
		return noOfStudents;
	}
	
	public static void main(String[] args) {
		Student vegard = new Student("AB99999", "Vegard Hellem", 25, 'M');
		vegard.setStudentId("ACB0000");
	}
	
	

}
