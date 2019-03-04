package of9forberedelse;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Scanner;

public class LanekassenIO implements LanekassenLoading{

	@Override
	public void save(String filename, LanekassenKalkulator calc, Person person) throws FileNotFoundException {
		PrintWriter writer = new PrintWriter(filename);
		
		String fileText = String.format("%d,%f,%d\n%d,%d", calc.getDownpaymentYears(), calc.getEffectiveInterest(), calc.getLoanAmount(), person.getWorkYears(), person.getDelayedCount());
		System.out.println(fileText);
		writer.print(fileText);
		writer.close();
		
	}

	@Override
	public LanekassenObjectLoader load(String filename) throws FileNotFoundException{
		Scanner scanner = new Scanner(new File(filename));
		String[] calc = scanner.nextLine().split(",");
		String[] person = scanner.nextLine().split(",");
		LanekassenKalkulator calculator = new LanekassenKalkulator(Integer.parseInt(calc[0]), Integer.parseInt(calc[2]), Double.parseDouble(calc[1]));
		Person p = new Person(Integer.parseInt(person[0]), Integer.parseInt(person[1]));
		scanner.close();
		LanekassenObjectLoader loader = new LanekassenObjectLoader();
		loader.person = p;
		loader.calculator = calculator;
		return loader;
	}

}
