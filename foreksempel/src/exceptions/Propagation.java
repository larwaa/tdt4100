package exceptions;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Propagation {


	static void method4() throws IOException {
		try {
			int a = 7;
			int b = 1; 
			int c = a / b;

			//			String foo = null;
			//			int length = foo.length();


			File file = new File("src/exceptions/Propagation.java"); 

			BufferedReader br = new BufferedReader(new FileReader(file));
			String str = "";

			while ((str = br.readLine()) != null) 
				System.out.println(str);
			br.close();


		} catch (ArithmeticException e) {
			System.out.println(e.getMessage());
		}
		finally
		{
			System.out.println("Inni method4: ");
		}

	}

	static void method3() throws IOException {
		method4();
		System.out.println("Inni method3");
	}

	static void method2() {
		try {
			method3();
		} catch (NullPointerException e) {
			System.out.println(e.getMessage());
		}
		catch (FileNotFoundException e) {
			System.out.println("FNF: "+e.getMessage());
		}
		catch (IOException e) {
			System.out.println("IO: "+e.getMessage());
		}

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
