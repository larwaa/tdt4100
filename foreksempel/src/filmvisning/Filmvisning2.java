package filmvisning;

public class Filmvisning2 {

	private Sal2 sal;
	private Film2 film;
	private int tid;
	private int pris;
	
	public Filmvisning2(Film2 film, Sal2 sal, int tid, int pris) {
		this.sal = sal;
		this.film = film;
		this.tid = tid;
		this.pris = pris;
		
		try {
			sal.addVisning(this);
			film.addVisning(this);
		} catch (Exception e) {
			throw e;
		}
	}

	public Film2 getFilm() {
		return film;
	}
	
	public void setFilm(Film2 film) {
		// Ikke vist på forelesning. Vi må lagre gammel film, legge inn
		// ny, fjerne visning av this fra gammel visning og legge den til
		// i denne.
		Film2 oldFilm = this.film;
		this.film = film;
		oldFilm.removeVisning(this); // Ikke laget på forelesning...
		this.film.addVisning(this);
	}
	
	// Den følgende er ikke laget på forelesning, ei heller er det noen
	// laget for den. Kan du lage en test for å se om koden stemmer?
	public void setSal(Sal2 sal) {
		Sal2 oldSal = this.sal; 
		this.sal = sal;
		oldSal.removeVisning(this);
		this.sal.addVisning(this);
		
	}
	
	public Sal2 getSal() {
		return sal;
	}
	
	public int getTid() {
		return tid;
	}
	
	public void setTid(int tid) {
		this.tid = tid;
	}
	
	public int getPris() {
		return pris;
	}
	
	public void flyttTidspunkt(int nytid) {
		if (this.sal.getVisningPaaTid(nytid) == null) {
			this.setTid(nytid);
		}
		else throw new IllegalArgumentException("Salen er booket da.");

	}
}
