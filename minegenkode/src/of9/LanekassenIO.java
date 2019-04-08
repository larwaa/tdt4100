package of9;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

public class LanekassenIO implements LanekassenIOInterface {

	@Override
	public void save(String filename, LanekassenKalkulator calc, Person person) throws IOException {
		PrintWriter writer = new PrintWriter(filename);
		
		String s = String.format("%d,%d,%f\n%d,%d", calc.getDownpaymentYears(), calc.getLoanAmount(), calc.getEffectiveInterest(), 
													person.getWorkYears(), person.getDelayedCount());
		writer.print(s);
		
		writer.flush();
		writer.close();
	}

	@Override
	public LanekassenObjectLoader load(String filename) throws IOException {
		Scanner scanner = new Scanner(new File(filename));
		
		String[] calc = scanner.nextLine().split(",");
		String[] pers = scanner.nextLine().split(",");
		
		LanekassenKalkulator calculator = new LanekassenKalkulator();
		calculator.setDownpaymentYears(Integer.parseInt(calc[0]));
		calculator.setLoanAmount(Integer.parseInt(calc[1]));
		calculator.setEffectiveInterest(Double.parseDouble(calc[2]));
		
		Person person = new Person(Integer.parseInt(pers[0]), Integer.parseInt(pers[1]));
		
		LanekassenObjectLoader loader = new LanekassenObjectLoader();
		loader.person = person;
		loader.calculator = calculator;
		scanner.close();
		
		return loader;
	}

}
