package files;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Scanner;

public class ImprovisedFilesLecture {
	
	public static void skriveTilFil() {
		PrintWriter writer;
		String file = new File("").getAbsolutePath();
		try {
			writer = new PrintWriter(file + "/src/iterators/kodeeksempel 2019-03-04.txt");
			writer.print("Jeg skriver til fil");
			writer.flush();
			writer.close();
			System.out.println("Success");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static void leseFraFil() throws FileNotFoundException {
		String file = new File("").getAbsolutePath() + "/src/iterators/kodeeksempel 2019-03-04.txt";
		Scanner scanner = new Scanner(new File(file));
		while (scanner.hasNextLine()) {
			String s = scanner.nextLine();
			System.out.println(s);
		}
		scanner.close();
	}
	
	public static void main(String[] args) /* Exception  <3 <3 <3 */ {
		ImprovisedFilesLecture.skriveTilFil();
		try {
			ImprovisedFilesLecture.leseFraFil();			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		Integer.parseInt("5");
	}

}
