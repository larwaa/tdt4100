package arv;

import java.util.ArrayList;
import java.util.Collection;

public class Biblioteksprogram {

	public static void main(String[] args) {
//		Bok bok = new Bok("Vanlig bok");
		SluttOrdbok ordbok = new SluttOrdbok("Nynorsk ordbok",12431);
//		Tegneseriealbum tegneseriealbum = new Tegneseriealbum("Asterix",250);
		
//		ordbok.setTittel("Engelsk");
		Collection<SluttBok> samling = new ArrayList<>();
//		samling.add(bok);
		samling.add(ordbok);
//		samling.add(tegneseriealbum);
//		System.out.println(ordbok.isValidTitle("Hei, ordbok"));
		
		samling.forEach(System.out::println);
		samling.stream()
		.filter(b -> b instanceof SluttOrdbok)
		.map(b -> (SluttOrdbok) b)
		.forEach(b -> System.out.println(b.getAntallOrd()));
		
	}

}
