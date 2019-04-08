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
		return this.name;
	}
	
	@Override
	public int getNumberOfGoldMedals() {
		int count = 0;
		for (Medal medal : medals) {
			if (medal.getType().equals("Gold")) {
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
	public int getNumberOfBronzeMedals() {
		return (int) medals.stream().filter(medal -> medal.getType().equals("Bronze")).count();
	}

	@Override
	public int getNumberOfMedals() {
		return medals.size();
	}

	@Override
	public void addMedal(Medal medal) {
		medals.add(medal);
	}
	
	public String dagensSmørning() {
		return "Blå ekstra";
	}
	
	public static void main(String[] args) {
		CrossCountrySkier klæbo = new CrossCountrySkier("Klæbo");
		CrossCountrySkier johaug = new CrossCountrySkier("Therese Johaug");
		CrossCountrySkier kalla = new CrossCountrySkier("Charlotte Kalla");
		
		Medal gold = new Medal("Gold");
		Medal silver = new Medal("Silver");
		Medal bronze = new Medal("Bronze");
		
		klæbo.addMedal(gold);
		klæbo.addMedal(gold);
		klæbo.addMedal(bronze);
		klæbo.addMedal(bronze);
		klæbo.addMedal(bronze);
		klæbo.addMedal(bronze);
		klæbo.addMedal(bronze);
		klæbo.addMedal(bronze);
		klæbo.addMedal(bronze);
		klæbo.addMedal(bronze);
		
		
		johaug.addMedal(gold);
		kalla.addMedal(gold);
		kalla.addMedal(gold);
		kalla.addMedal(gold);
		kalla.addMedal(gold);
		kalla.addMedal(gold);
		kalla.addMedal(gold);
		
		
		List<CrossCountrySkier> athletes = new ArrayList<>();
		athletes.add(johaug);
		athletes.add(kalla);
		athletes.add(klæbo);
		
		Collections.sort(athletes, new MedalsComparator());
		Collections.sort(athletes, (o1, o2) -> o1.getName().compareTo(o2.getName()));
		
		for (Athlete athlete : athletes) {
			if (athlete instanceof CrossCountrySkier) {
				System.out.println(((CrossCountrySkier) athlete).getName());
			}
		}
		
		Collections.sort(athletes);
		
		for (Athlete athlete : athletes) {
			if (athlete instanceof CrossCountrySkier) {
				System.out.println(((CrossCountrySkier) athlete).getName());
			}
		}
		/*
		System.out.println(klæbo.getNumberOfGoldMedals());
		CrossCountrySkier klæbo2 = (CrossCountrySkier) klæbo;
		System.out.println(klæbo2.dagensSmørning());
		*/
		
		for (Medal medal: klæbo) {
			System.out.println(medal.getType());
		}
		
	}

	@Override
	public int compareTo(Athlete o) {
		if (this.getNumberOfGoldMedals() == o.getNumberOfGoldMedals()) {
			if (this.getNumberOfSilverMedals() == o.getNumberOfSilverMedals()) {
				return this.getNumberOfMedals() - o.getNumberOfMedals();
			} else {
				return this.getNumberOfSilverMedals() - o.getNumberOfSilverMedals();
			}
		}
		return this.getNumberOfGoldMedals() - o.getNumberOfGoldMedals();
	}

	@Override
	public Iterator<Medal> iterator() {
		return this.medals.iterator();
	}
	
	

}
