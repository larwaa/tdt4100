package of7;

import java.util.ArrayList;
import java.util.List;

public class Employee {
	
	private String name;
	
	private Employee manager;
	private List<Employee> employees = new ArrayList<>();
	
	public Employee(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public Employee getManager() {
		return manager;
	}
	
	public void setManager(Employee manager) {
		Employee oldManager = this.getManager();
		this.manager = manager;
		
		if (oldManager != null) {
			oldManager.removeEmployee(this);
		}
		
		if (this.manager != null) {
			this.manager.addEmployee(this);
		}
	}

	public void addEmployee(Employee employee) {
		if (! employees.contains(employee)) {
			employees.add(employee);
			employee.setManager(this);
		}
		
	}
	
	public void removeEmployee(Employee employee) {
		if (this.employees.contains(employee)) {
			this.employees.remove(employee);
			if (employee.getManager() == this) {
				employee.setManager(null);
			}
		}
	}
	
	@Override
	public String toString() {
		return name;
	}
	
	public static void main(String[] args) {
		Employee bovim = new Employee("Bovim");
		Employee vegard = new Employee("Vegard");
		Employee ola = new Employee("Ola");
		
		bovim.addEmployee(vegard);
		vegard.addEmployee(ola);
		
		bovim.addEmployee(ola);
	}
	
	
	

}
