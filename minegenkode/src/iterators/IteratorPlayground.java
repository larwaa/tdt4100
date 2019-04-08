package iterators;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class IteratorPlayground {
	
	public static void main(String[] args) {
		List<Integer> listeMedTall = new ArrayList<>(Arrays.asList(1, 5, 8000, 2000, 250, 314));
		
		/*
		for (int i = 0; i < listeMedTall.size(); i++) {
			int tall = listeMedTall.get(i);
			if (tall > 1000) {
				listeMedTall.remove(i); //her skjer det noe galt :)
			}
			System.out.println(tall);
		}
		*/
		/*
		for (int tall : listeMedTall) {
			if (tall > 1000) {
				listeMedTall.remove((Integer) tall); // Gir en concurrentModificationException
			}
			System.out.println(tall);
		}
		System.out.println(listeMedTall);
		*/
		/*
		Iterator<Integer> it = listeMedTall.iterator();
		
		while (it.hasNext()) {
			int tall = it.next();
			if (tall > 1000) {
				it.remove();
			}
		}
		*/
		
		Iterator<Integer> highNumberIterator = new HighNumberIterator(listeMedTall, 200);
		
		
		while (highNumberIterator.hasNext()) {
			int tall = highNumberIterator.next();
			
			System.out.println(tall);
		}
		
		System.out.println(listeMedTall);
	}

}
