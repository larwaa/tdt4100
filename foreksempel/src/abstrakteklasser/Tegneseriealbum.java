package abstrakteklasser;

public class Tegneseriealbum extends Bok {

	public Tegneseriealbum(String tittel, int antallSider) {
		super(tittel, antallSider);
	}

	@Override
	protected String getSjanger() {
		return "Tegneseriealbum";
	}

}
