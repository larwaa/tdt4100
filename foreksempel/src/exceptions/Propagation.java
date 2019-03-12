package exceptions;

import java.util.Arrays;
import java.util.List;

public class Propagation {


	static void method4() {
		int a = 7;
		int b = 1;
		int c = a / b;

		System.out.println("Inni method4: "+c);
	}
 
	static void method3() {
		method4();
		System.out.println("Inni method3");
	}

	static void method2() {
		method3();
		System.out.println("Inni method2");
	}

	static void method1() {
		method2();
		System.out.println("Inni method1");
	}

	static void method() {
		method1();
		System.out.println("Inni method");
	}


	public static void main(String[] args) {
		
		method();
		System.out.println("Inni main");
        }

}


//File file = new File("src/exceptions/Propagation.java"); 
//try {
//	BufferedReader br = new BufferedReader(new FileReader(file));
//	br.readLine();
//	String str = "";
//
//	while ((str = br.readLine()) != null) 
//		System.out.println(str);
//	br.close();
//
//} catch (Exception e) {
//	// TODO Auto-generated catch block
//	e.printStackTrace();
//} 
//
