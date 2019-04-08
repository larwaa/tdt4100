package loekkeinterface;

import java.util.ArrayList;

public class ListCharPrinter implements LoekkePrintInterface{

	@Override
	public void printCharacters(Object obj) {
		if (obj instanceof ArrayList) {
			ArrayList<Character> tmp = (ArrayList<Character>) obj;
			for (char kar : tmp) {
				System.out.println(kar);
			}
			
		}
		
	}
}