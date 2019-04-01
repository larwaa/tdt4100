package abstrakteklasser;

public abstract class Bok {

	private String tittel;
	private int antallSider;
	
	protected Bok(String tittel, int antallSider) {
		super();
		this.tittel = tittel;
		this.antallSider = antallSider;
	}
	
	protected String toStringHelper() {
		return "tittel=" + tittel + ", antallSider=" + antallSider;
	}

	@Override
	public String toString() {
		return getSjanger() + "[" + toStringHelper() + "]";
	}

	protected abstract String getSjanger();

	public String getTittel() {
		return tittel;
	}
	
	public int getAntallSider() {
		return antallSider;
	}
}
