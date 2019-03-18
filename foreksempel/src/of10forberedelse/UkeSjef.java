package of10forberedelse;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

public class UkeSjef{
	private String name;
	private List<UkeArbeider> workers;
	
	public UkeSjef(String name) {
		this.name = name;
		this.workers = new ArrayList<>();
	}
	
	public String getName() {
		return name;
	}

	
	public void work(String task, boolean responsibility) {
		if (responsibility) {
			List<UkeArbeider> funker = workers.stream().filter(worker -> worker instanceof UkeFunk).collect(Collectors.toList());
			int randomFunk = new Random().nextInt(funker.size());
			funker.get(randomFunk).work(task);
		}
		else {
			List<UkeArbeider> slaver = workers.stream().filter(worker -> worker instanceof UkeSlave).collect(Collectors.toList());
			int randomSlave = new Random().nextInt(slaver.size());
			slaver.get(randomSlave).work(task);
		}
	}
	
	public void addWorker(UkeArbeider worker) {
		workers.add(worker);
	}
	
	public void removeWorker(UkeArbeider worker) {
		workers.remove(worker);
	}
	
	public static void main(String[] args) {
		UkeArbeider ola = new UkeFunk("Ola Nordmann");
		UkeArbeider kari = new UkeSlave("Kari Nordmann");
		UkeArbeider john = new UkeSlave("John Smith");
		
		UkeSjef bossy = new UkeSjef("Per");
		
		bossy.addWorker(ola);
		bossy.addWorker(kari);
		bossy.addWorker(john);
		
		bossy.work("Få orden på økonomien", true);
		bossy.work("Slipp inn folk i teltet", false);
	}
}
