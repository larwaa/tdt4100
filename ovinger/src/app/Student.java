package app;

import java.util.List;

public class Student {

	private String name; // Minst to navn, for- og etternavn. Minst to bokstaver i alle navn.
	private String study; // Streng med linjenavn, fra liste med godkjente
	private int year; // 1-6
	private String studentID; // format NTNU-507429
	private boolean isBanned; // True/false
	
	public Student(String name, String study, int year, String studentID) {
		this.setName(name);
		this.setStudentID(studentID);
		this.setYear(year);
		this.setStudy(study);
		this.isBanned = false;
	}
	
	public void setName(String name) {
		this.checkName(name);
		this.name = name;
	}
	
	private void checkName(String name) {
		String[] tempName = name.split(" ");
		char[] tempChar = name.toCharArray();
		
		if (tempName.length < 2) {
			throw new IllegalArgumentException("Must contain both a first and last name");
		}
		
		for (char c : tempChar) {
			if (! Character.isAlphabetic(c)) {
				throw new IllegalArgumentException("Navn kan kun bestå av bokstaver");
			}
		}
		
		for (String s : tempName) {
			if (s.length() < 2) {
				throw new IllegalArgumentException("Navn kan ikke være kortere enn to bokstaver.");
			}
		}
	}
	
	public void setYear(int year) {
		checkYear(year);
		this.year = year;
	}
	
	public void checkYear(int year) {
		if (year < 0 || year > 6) {
			throw new IllegalArgumentException("Kun kull fra 1-6 er godkjent.");
		}
	}
	
	public void setStudentID(String studentID) {
		this.checkName(studentID);
		this.studentID = studentID;
	}
	
	public void checkStudentID(String studentID) {
		String[] tempID = studentID.split("-");
		char[] locID = tempID[0].toCharArray();
		char[] studID = tempID[1].toCharArray();
		
		if (tempID.length != 2) {
			throw new IllegalArgumentException("StudentID format: XXXX-YYYYYY");
		}
		
		if (studID.length != 6) {
			throw new IllegalArgumentException();
		}
		
		if (locID.length != 4) {
			throw new IllegalArgumentException();
		}
		
		for (char c : locID) {
			if (! Character.isLetter(c)) {
				throw new IllegalArgumentException();
			}
		}
		
		for (char c : studID) {
			if (! Character.isDigit(c)) {
				throw new IllegalArgumentException();
			}
		}
	}
	
	public void setStudy(String study) {
		this.checkStudy(study);
		this.study = study;
	}
	
	public void checkStudy(String study) {
		List<String> tempList = List.of("Norges tekniske- og naturvitenskapelige universitet", "Universitet i Bergen", "Universitetet i Oslo", "Norges Handelshøyskole", "Universitet i Tromsø", "BI");
		char[] tempChar = study.toCharArray();
		String[] tempString = study.split(" ");
		
		for (char c : tempChar) {
			if (! Character.isLetter(c)) {
				throw new IllegalArgumentException();
			}
		}
	}

}