package exceptions;

public class Propagation {


	static void method4() {
		int a = 7;
		int b = 0;
		int c = a/b;
		System.out.println("Inni method4");
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
	}

}
