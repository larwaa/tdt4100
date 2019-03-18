package of10;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

public class UkaSjef {
	
	
	private String name;
	private List<UkeArbeider> workers = new ArrayList<>();
	
	public String toString() {
		return name;
	}
	
	public void addWorker(UkeArbeider worker) {
		workers.add(worker);
	}
	
	public void removeWorker(UkeArbeider worker) {
		workers.remove(worker);
	}
	
	public void work(String task, boolean isHard) {
		if (isHard) {
			List<UkeArbeider> funker = workers.stream().filter(worker -> worker instanceof UkeFunk).collect(Collectors.toList());
			int randomNumber = new Random().nextInt(funker.size());
			funker.get(randomNumber).work(task);
		}
		else {
			List<UkeArbeider> slaver = workers.stream().filter(worker -> worker instanceof UkeSlave).collect(Collectors.toList());
			int randomNumber = new Random().nextInt(slaver.size());
			slaver.get(randomNumber).work(task);
		}
		
		//Uten lambda
		List<UkeArbeider> funker = new ArrayList<>();
		
		for(UkeArbeider worker: workers) {
			if(worker instanceof UkeFunk) {
				funker.add(worker);
			}
		}
		
	}
	
	public static void main(String[] args) {
		UkaSjef sjef = new UkaSjef();
		
		UkeFunk funk = new UkeFunk();
		UkeSlave slave = new UkeSlave();
		
		sjef.addWorker(funk);
		sjef.addWorker(slave);
		
		sjef.work("Se gjennom økonomien", true);
		sjef.work("Slippe folk inn i teltet", false);
		
		
	}
}
