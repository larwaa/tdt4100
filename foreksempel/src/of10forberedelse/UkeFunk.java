package of10forberedelse;

public class UkeFunk implements UkeArbeider{
	private String name;
	
	
	public UkeFunk(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	

	@Override
	public void work(String task) {
		System.out.println("Jeg er en ukefunk som gjør oppgaven:" + task);
		
	}
}
