package of10forberedelse;

public class UkeSlave implements UkeArbeider {
private String name;
	
	
	public UkeSlave(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	

	@Override
	public void work(String task) {
		System.out.println("Jeg er en slave som gjør oppgaven:" + task);
		
	}
}
