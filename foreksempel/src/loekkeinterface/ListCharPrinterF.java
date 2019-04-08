package loekkeinterface;

import java.util.ArrayList;
import java.util.List;

public class ListCharPrinterF implements LoekkeInterfaceF {

	@Override
	public void printCharacters(Object obj) {
		if (obj instanceof List<?>) {
			ArrayList<Character> tmp = (ArrayList<Character>) obj;
			for (Character character : tmp) {
				System.out.println(character);
			}
		} else if (obj instanceof char[]) {
			for ()
		}
	}

}
