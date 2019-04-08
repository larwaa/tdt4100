package filmvisning;

public class Filmvisning {

	private Film film;
	private Sal sal;
	private String tid;
	private int pris;
	
	public Filmvisning(Film film, Sal sal, String tid, int pris) {
		this.film = film;
		this.sal = sal;
		this.tid = tid;
		this.pris = pris;
		
	}
	
	@Override
	public String toString() {
		return String.format("Filmvisning [%s, sal=%s, tid=%s, pris=%s]", film, sal, tid, pris);
	}
	
	public static void main(String[] args) {
		Film f1 = new Film("Bad Santa", 15, "USA");
		Film f2 = new Film("Alexander", 11, "USA");
		Sal s1 = new Sal("Prinsen 4", 80);
		Sal s2 = new Sal("Prinsen 2", 150);
		Sal s3 = new Sal("Nova 4", 500);
		
		
		Filmvisning fv1 = new Filmvisning(f1, s3, "17:00", 85);
		Filmvisning fv2 = new Filmvisning(f1, s2, "17:00", 85);
		Filmvisning fv3 = new Filmvisning(f2, s1, "18:00", 85);
		
		System.out.println(fv1);
		System.out.println(fv2);
		System.out.println(fv3);
		
		/*
		Filmvisning fv1 = new Filmvisning("Alexander", "Nova 3", 12, "USA", "17:00", 85);
		System.out.println(fv1);
		Filmvisning fv2 = new Filmvisning("Alexander", "Prinsen 4", 12, "USA", "18:50", 50);
		System.out.println(fv2);
		Filmvisning fv3 = new Filmvisning("Bad Santa", "Prinsen 2", 18, "USA", "18:50", 200);
		System.out.println(fv3);
		*/
	}
}
