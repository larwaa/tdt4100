package loekkeinterface;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Løkker {

	public static void main(String[] args) {
		
		Løkker tull = new Løkker();
		List<Character> liste = new ArrayList<>();
		liste.add('a');
		liste.add('b');
		liste.add('c');		
		
		String streng = new String("def");
		
		char[] charArray = { 'g', 'h', 'i'}; 

		tull.skrivut(liste, new ListCharPrint());
		tull.skrivut(streng, new StringCharPrinter());
		tull.skrivut(charArray, new CharArrayPrinter());	
	}

	private void skrivut(Object ob, LøkkePrintInterface pI) {
		pI.printCharacters(ob);
	}
}
