package filmvisning;

public class Filmvisning {
	
	private Film film;
	private Sal sal;
	private String tid;
	private int pris;

	public Filmvisning(Film film, Sal sal, String tid, int pris) {
		super();
		this.film = film;
		this.sal = sal;
		this.tid = tid;
		this.pris = pris;
	}



	@Override
	public String toString() {
		return "Filmvisning [film=" + film + ", sal=" + sal + ", tid=" + tid + ", pris=" + pris + "]";
	}



	public static void main(String[] args) {
		Film f1 = new Film("Alexander",15,"USA");
		Film f2 = new Film("Bad Santa",11,"USA");
		Sal s1 = new Sal("Nova 3",140);
		Sal s2 = new Sal("Prinsen 4",40);
		Sal s3 = new Sal("Prinsen 2",240);

		Filmvisning fv1 = new Filmvisning(f1, s1, "20:00", 85);
		Filmvisning fv2 = new Filmvisning(f1, s2, "17:00", 75);
		Filmvisning fv3 = new Filmvisning(f2, s3, "18:50", 70);
		System.out.println(fv1);
		System.out.println(fv2);
		System.out.println(fv3);
	}

}
