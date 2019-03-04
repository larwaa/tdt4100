package iterators;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class IteratorPlayground {
	
	public static void main(String[] args) {
		List<Integer> listeMedTall = new ArrayList<>(Arrays.asList(1, 5, 8000, 2000, 250, 314));
		
		for(int i = 0; i<listeMedTall.size(); i++) {
			int tall = listeMedTall.get(i);
		}
		System.out.println(listeMedTall);
		for(int tall: listeMedTall) {
		}
		// System.out.println(listeMedTall);
		/*
		Iterator<Integer> it = listeMedTall.iterator();
		
		while (it.hasNext()) {
			int tall = it.next();
			if (tall > 1000) {
				it.remove();
			}
		}
		*/
		System.out.println(listeMedTall);
		
		Iterator<Integer> it = new HighNumberIterator(listeMedTall, 200);
		
		while(it.hasNext()) {
			int tall = it.next();
			
			System.out.println(tall);
		}
	}
	
	
}
