package innkapsling;

public class TallInfo {

	/*
	 * Formålet her er å vise at en kan la et objekt inneholde noe helt 
	 * annet enn det en viser for omverden. Her kan man bruke et TallInfo-objekt
	 * til å hente ut både kvadrattallet og tallet doblet, men selv om en får 
	 * tilgang til dette via get-metoder så finnes ikke disse tallene. De _lages_
	 * når en ber om det. Slik kapsler en inn det faktiske inneholdet.
	 */
	
	int tall;
	
	
	int getSquared() {
		return tall*tall;
	}
	
	int getDoubled() {
		return tall*2;
	}
	
	public TallInfo(int tall) {
		this.tall = tall;
	}



	public static void main(String[] args) {
		TallInfo t = new TallInfo(4);
		System.out.println(t.getSquare());
		System.out.println(t.getDoubled());
		
		
	}

}
