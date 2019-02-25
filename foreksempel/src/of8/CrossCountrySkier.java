package of8;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class CrossCountrySkier implements Athlete, Comparable<Athlete>, Iterable<Medal>{
	
	private Collection<Medal> medals = new ArrayList<>();
	private String name;
	
	public CrossCountrySkier(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}



	@Override
	public int getNumberOfGoldMedals() {
		int count = 0;
		for(Medal medal: medals) {
			if (medal.getType().equalsIgnoreCase("Gold")) {
				count ++;
			}
		}
		return count;
	}

	@Override
	public int getNumberOfSilverMedals() {
		return (int) medals.stream().filter(medal -> medal.getType().equals("Silver")).count();
	}

	@Override
	public int getNumberOfMedals() {
		return medals.size();
	}

	@Override
	public void addMedal(Medal medal) {
		medals.add(medal);
	}
	
	public String dagensSmorning() {
		return "Blå ekstra";
	}
	
	public static void main(String[] args) {
		CrossCountrySkier klæbo = new CrossCountrySkier("Klæbo");
		CrossCountrySkier johaug = new CrossCountrySkier("Therese Johaug");
		SkiJumper forfang = new SkiJumper();
		Medal gold = new Medal("Gold");
		Medal silver = new Medal("Silver");
		Medal bronze = new Medal("Bronze");
		
		klæbo.addMedal(gold);
		klæbo.addMedal(gold);
		johaug.addMedal(gold);
		johaug.addMedal(silver);
		johaug.addMedal(bronze);
		
		List<CrossCountrySkier> athletes = new ArrayList<>();
		athletes.add(klæbo);
		athletes.add(johaug);


		System.out.println(athletes.get(0).getName());
		
		
		Collections.sort(athletes);
		System.out.println(athletes.get(0).getName());
		
		MedalsComparator comparator = new MedalsComparator();
		Collections.sort(athletes, comparator);
		System.out.println(athletes.get(0).getName());
		
		Collections.sort(athletes, (o1, o2) -> o1.getName().compareTo(o2.getName()));
		
		

		
		

		// athletes.add(forfang);
		
		
		for(Athlete athlete: athletes) {
			// System.out.println(athlete instanceof Athlete);
			if (athlete instanceof CrossCountrySkier) {
				CrossCountrySkier skier = (CrossCountrySkier) athlete; 
				System.out.println(skier.dagensSmorning());
			}
		}
		
		System.out.println(klæbo.getNumberOfGoldMedals());
		CrossCountrySkier klæbo2 = (CrossCountrySkier) klæbo;
		System.out.println(klæbo2.dagensSmorning());
		
		for(Medal medal: klæbo) {
			
		}
	}

	@Override
	public int compareTo(Athlete o) {
		if(this.getNumberOfGoldMedals () == o.getNumberOfGoldMedals()) {
			if (this.getNumberOfSilverMedals() == o.getNumberOfSilverMedals()) {
				return this.getNumberOfMedals() - o.getNumberOfGoldMedals();
			}
			return this.getNumberOfSilverMedals() - o.getNumberOfSilverMedals();
		}
		return this.getNumberOfGoldMedals() - o.getNumberOfGoldMedals();
	}

	@Override
	public Iterator<Medal> iterator() {
		return this.medals.iterator();
	}

}
