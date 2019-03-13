package exceptions;

import java.util.Map;

public class Feiltyper {


		// Diverse feiltyper!
	public static void main(String[] args) {


		// Nullpointerexception:
		//				String foo = null;
		//		        int length = foo.length();   

		// Classcastexception:
		//		        Object i = Integer.valueOf(42);
		//		        String s = (String)i; 

		// Indexoutofboundserror:
		//		List<String> ls=new ArrayList<>();
		//	      ls.add("a");
		//	      ls.add("b");
		//	      ls.get(3);

		// nosuchelementexception:
		//				List<String> ls = new ArrayList<>();
		//				Iterator<String> it = ls.iterator();
		//				System.out.println(it.next());

		// UnsupportedOperationException
		//		String[] flowers = { "Ageratum", "Allium", "Poppy", "Catmint" }; 
		////		List<String> flowerList = Arrays.asList(flowers);  
		//		List<String> flowerList = new ArrayList<>(Arrays.asList(flowers));
		//		flowerList.add("Celosia");
		//		flowerList.forEach(System.out::println);


		// IllegalArgumentException:
		//		Map<String, Integer> tempMap = Map.of(
		//		        "Ost",    13,
		//		        "Pølse",      19,
		//		        "Ost",    13, // !
		//		        "Bacalao",      14
		//		);
	}

}
