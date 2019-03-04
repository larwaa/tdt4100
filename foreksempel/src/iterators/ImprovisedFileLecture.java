package iterators;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Scanner;

public class ImprovisedFileLecture {
	
	
	
	public static void skriveTilFil() {
		PrintWriter writer;
		String file = new File("").getAbsolutePath();
		try {
			writer = new PrintWriter(file + "/src/iterators/forelesning.txt");
			writer.print("Jeg skriver til fil");
			writer.flush();
			writer.close();
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	public static void leseFraFil() throws FileNotFoundException {
		String file = new File("").getAbsolutePath() + "/src/iterators/forelesning.txt";
		Scanner scanner = new Scanner(new File(file));
		
		while(scanner.hasNextLine()) {
			String s = scanner.nextLine();
			System.out.println(s);
		}
		scanner.close();
		
	}
	
	public static void main(String[] args) {
		/*
		ImprovisedFileLecture file = new ImprovisedFileLecture();
		file.skriveTilFil();
		*/
		ImprovisedFileLecture.skriveTilFil();
		try {
			ImprovisedFileLecture.leseFraFil();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("ups");
			e.printStackTrace();
		}
		/*
		Integer tall = new Integer(5);
		tall.parseInt("5");
		*/
	}
	
	
}
