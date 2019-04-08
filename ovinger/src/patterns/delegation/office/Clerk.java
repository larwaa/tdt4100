package patterns.delegation.office;

import java.util.ArrayList;
import java.util.Collection;
import java.util.function.BinaryOperator;

public class Clerk implements Employee {

    private Printer printer;
    private int taskCount;
    Collection<Employee> employees = new ArrayList<>();

    public Clerk(Printer printer){
    	if (printer == null) {
    		throw new IllegalArgumentException("Hver Clerk må ha en printer!");
    	}
    	employees.add(this);
        this.printer = printer;
    }

    public double doCalculations(BinaryOperator<Double> operation, double value1, double value2) {
        taskCount++;
        return operation.apply(value1, value2);
    }

    public void printDocument(String document) {
        taskCount++;
        printer.printDocument(document, this);
    }

    public int getTaskCount() {
        return taskCount;
    }

    public int getResourceCount() {
        return employees.size();
    }
}
