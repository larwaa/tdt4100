package patterns.delegation.office;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.function.BinaryOperator;
import java.util.stream.Collectors;

public class Manager implements Employee {

    private int taskCount;
    private Collection<Employee> employees = new ArrayList<>();

    public Manager(Collection<Employee> employees){
        if (employees.size() == 0){
            throw new IllegalArgumentException("Må ha mer enn 0 ansatte.");
        }
        this.employees.add(this);
        this.addEmployees(employees);
    }

    private void addEmployees(Collection<Employee> employees) {
        this.employees.addAll(employees);
        for (Employee employee : employees) {
            if (employee.getResourceCount() > 1 && employee instanceof Manager) {
                Manager tempEmployee = (Manager) employee;
                this.employees.addAll(tempEmployee.employees.stream()
                        .filter((e) -> ! this.employees.contains(e))
                        .collect(Collectors.toList()));
            }
        }
    }

    private Employee selectEmployee(){
        return employees
                .stream()
                .sorted((e1, e2) -> e1.getTaskCount() - e2.getTaskCount())
                .filter((e) -> e != this)
                .findFirst().orElse(this);
    }

    public double doCalculations(BinaryOperator<Double> operation, double value1, double value2) {
        taskCount++;
        return selectEmployee().doCalculations(operation, value1, value2);
    }

    public void printDocument(String document) {
        selectEmployee().printDocument(document);
        taskCount++;
    }

    public int getTaskCount() {
        return employees.stream()
                .filter((e) -> e != this)
                .map(Employee::getTaskCount)
                .reduce((e1, e2) -> e1 + e2)
                .orElse(-1);
    }

    public int getResourceCount() {
        return employees.size();
    }

    public static void main(String[] args) {
        Printer p = new Printer();
        Employee c1 = new Clerk(p);
        Employee c2 = new Clerk(p);
        Employee c3 = new Clerk(p);
        Employee c4 = new Clerk(p);
        Collection<Employee> e1 = new ArrayList<>(Arrays.asList(c1, c2, c3, c4));

        Employee m1 = new Manager(e1);
        Collection<Employee> e2 = new ArrayList<>(Arrays.asList(m1));
        Employee m2 = new Manager(e2);
        Collection<Employee> e3 = new ArrayList<>(Arrays.asList(m2));
        Employee m3 = new Manager(e3);



        m3.doCalculations((a, b) -> a + b, 20, 40);
        m3.doCalculations((a, b) -> a + b, 20, 40);
        m3.doCalculations((a, b) -> a + b, 20, 40);
        m3.doCalculations((a, b) -> a + b, 20, 40);


        //Kun ett mellomledd
        System.out.println("Kun én leder: ");
        System.out.println(m1.getTaskCount());
        System.out.println(m1.getResourceCount() + "\n");

        //Flere mellomledd
        System.out.println("Flere mellomledd: ");
        System.out.println(m3.getTaskCount());
        System.out.println(m3.getResourceCount());
    }
}
