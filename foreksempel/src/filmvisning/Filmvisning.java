package filmvisning;

public class Filmvisning {
	
	private String filmtittel;
	private String sal;
	private int alder;
	private String nasjonalitet;
	private String tid;
	private int pris;
	
	public Filmvisning(String filmtittel, String sal, int alder, String nasjonalitet, String tid, int pris) {
		super();
		this.filmtittel = filmtittel;
		this.sal = sal;
		this.alder = alder;
		this.nasjonalitet = nasjonalitet;
		this.tid = tid;
		this.pris = pris;
	}

	@Override
	public String toString() {
		return "Filmvisning [filmtittel=" + filmtittel + ", sal=" + sal + ", alder=" + alder + ", nasjonalitet="
				+ nasjonalitet + ", tid=" + tid + ", pris=" + pris + "]";
	}
	
	public static void main(String[] args) {
		Filmvisning fv1 = new Filmvisning("Alexander", "Nova 3", 15, "Amerikansk", "20:00", 85);
		Filmvisning fv2 = new Filmvisning("Alexander", "Prinsen 4", 15, "Amerikansk", "17:00", 75);
		Filmvisning fv3 = new Filmvisning("Bad Santa", "Prinsen 2", 11, "Amerikansk", "18:50", 70);
		System.out.println(fv1);
		System.out.println(fv2);
		System.out.println(fv3);
	}

}
