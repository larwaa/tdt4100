package person3comparators;

import java.util.ArrayList;
import java.util.List;
class Student {
   String name; 
   int age; 
   int id; 
   public String getName() {
      return name; 
   } 
   public int getAge() { 
      return age; 
   } 
   public int getId() { 
      return id; 
   } 
   Student(String n, int a, int i){ 
      name = n; 
      age = a; 
      id = i; 
   } 
   @Override public String toString() {     
      return ("Student[ "+"Name:"+this.getName()+             
              " Age: "+ this.getAge() +                     
              " Id: "+ this.getId()+"]"); 
   }
}
public class Example {
   public static void main(String[] args) {
      List<Student> studentlist = new ArrayList<Student>();
      studentlist.add(new Student("Per", 22, 100)); 
      studentlist.add(new Student("Ingar", 17, 1002)); 
      studentlist.add(new Student("Ida", 24, 1011)); 
      studentlist.add(new Student("Børge", 20, 1010)); 
      studentlist.add(new Student("Småen", 18, 1110));
      System.out.println("Før vi sorterer studentdata:"); 
 
      //java 8 forEach for å skrive ut en liste
      studentlist.forEach((s)->System.out.println(s));

      System.out.println("Sortert etter alder:"); 

      //Lambda expression for å sortere etter alder
      studentlist.sort((Student s1, Student s2)->s1.getAge()-s2.getAge()); 

      //utskrift på kortform
      studentlist.forEach(System.out::println);         

      System.out.println("Etter sortering på navn:"); 
      studentlist.sort((Student s1, Student s2)->s1.getName().compareTo(s2.getName())); 
      studentlist.forEach(System.out::println);        
      
      System.out.println("Etter sortering på id:");        
      //Lambda for å sortere på studentid:
      studentlist.stream()
      .sorted((Student s1, Student s2)->s1.getId()-s2.getId()) 
      .forEach(System.out::println); 
      
   }
}