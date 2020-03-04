package patterns.delegation.office;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Printer {

    private Map<Employee, List<String>> printHistory = new HashMap<>();

    void printDocument(String document, Employee employee){
        System.out.println(document);
        if (! printHistory.containsKey(employee)){
            printHistory.put(employee, new ArrayList<>(Arrays.asList(document)));
        } else {
            printHistory.get(employee).add(document);
        }
    }

    public List<String> getPrintHistory(Employee employee){
    	if (printHistory.get(employee) == null) {
    		return new ArrayList<>();
    	}
        return printHistory.get(employee);
    }
    
    public static void main(String[] args) {
    	Printer p1 = new Printer();
    	Clerk c1 = new Clerk(p1);
    	Clerk c2 = new Clerk(p1);
    	c2.printDocument("test2");
    	c1.printDocument("test");
    	c1.printDocument("test2");
    	Collection<String> printed = p1.getPrintHistory(c1);
    	int size = printed.size();
    	System.out.println(p1.getPrintHistory(c1));
    }
}
