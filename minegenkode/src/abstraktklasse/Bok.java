package abstraktklasse;

public abstract class Bok {

	private String tittel;
	private int antallSider;

	protected Bok(){ // Gir ikke mening å ha en public konstruktør for en abstrakt klasse, den må uansett instansieres gjennom subklassene.
		this.tittel = null;
		this.antallSider = 0;
	}

	protected Bok(String tittel, int antallSider){
		this.tittel = tittel;
		this.antallSider = antallSider;
	}

	protected abstract String getSjanger();

	protected String toStringHelper(){
		return "tittel=" + tittel + ", " + "antallSider=" + antallSider;
	}

	@Override
	public String toString() {
		return getSjanger() + "[" + toStringHelper() + "]";
	}
}
