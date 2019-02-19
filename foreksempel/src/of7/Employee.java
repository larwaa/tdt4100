package of7;

import static org.junit.Assert.assertArrayEquals;

import java.util.ArrayList;
import java.util.List;

public class Employee {
	
	private Employee manager;
	private List<Employee> employees = new ArrayList<>();
	private String name; 
	
	public Employee(String name) {
		this.name = name;
	}
	
	
	public void setManager(Employee manager) {
		Employee oldManager = this.manager; 
		this.manager = manager;
		if (oldManager != null) {
			oldManager.removeEmployee(this);
		}
		if (manager != null) {
			manager.addEmployee(this);
		}
	}
	
	public void addEmployee(Employee employee) {
		if (!employees.contains(employee)) {
			employees.add(employee);
			if (employee.getManager() != this) {
				employee.setManager(this);
			}
		}
	}
	
	public void removeEmployee(Employee employee) {
		employees.remove(employee); 
		if (employee.getManager() == this)  {
			employee.setManager(null);
		}
	}

	public Employee getManager() {
		return manager;
	}
	
	public boolean hasEmployee(Employee e) {
		return employees.contains(e);
	}


	@Override
	public String toString() {
		return name + " - manager is: " + getManager().name;
	}
	
	public static void main(String[] args) {
		Employee vegard = new Employee("Vegard");
		Employee bovim = new Employee("bovim");
		Employee ola = new Employee("anna");
		
		vegard.setManager(bovim);
		vegard.addEmployee(ola);
		
		System.out.println(vegard);
		System.out.println(ola);
		
		bovim.addEmployee(ola);
		System.out.println(vegard);
		System.out.println(ola);
		System.out.println(vegard.hasEmployee(ola));
	
	}
	
	
	
	

}
