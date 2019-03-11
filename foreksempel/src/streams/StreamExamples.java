package streams;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.String;
import java.net.URI;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class StreamExamples {

	public static void main(String[] args) throws IOException {



		List<Integer> liste = Arrays.asList(1,2,3,4,5,6,7,8,9,10);

		// Fjerne oddetall:
		System.out.print("\nListe av partall:");
		System.out.println(liste.stream()
				.filter(i -> i%2 == 0)
				.collect(Collectors.toList()));

		// Summer tall:
		System.out.print("\nSum av tall: ");
		System.out.println(liste.stream()
				.reduce(0, (sum, i) -> sum + i));

		List<String> people = Arrays.asList("Al", "Skybert", "Farfar", "Farmor", "Håvard", "Jørn", "Andrea", "Børge");
		// Liste med lengde av Stringobjekter:
		System.out.print("\nNavnelengder: ");
		System.out.println(people.stream()
				.map(s -> s.length())
				//		.distinct()
				//		.sorted()
				.collect(Collectors.toList()));


		// Sum av lengder av Stringobjekter:
		System.out.print("\nSum av navnelengder: ");
		System.out.println(people.stream()
				.map(s -> s.length())
				.reduce(0, (sum, i) -> sum+i));


		// Fjerne de første seks elementene i en intstream fra 0 til 10, og telle elementer:
		System.out.print("\nHopper over noen elementer: ");
		System.out.println(IntStream
				.range(0, 10)
				//				.peek(System.out::println)
				.skip(6)
				.count());

		// Legge sammen alle tall opp til 200 som går opp i tre og sju
		System.out.print("\nLegge sammen elementer fra 0-200 som går opp i 3 og 7: ");
		System.out.println(IntStream
				.range(0, 200)
				.filter(t -> t%3 == 0)
				.filter(t -> t%7 == 0)
				.reduce(0, (sum,i) -> sum+i));



		// Lage en kontinuerlig strøm av heltall som deles på et annet tall, og så skrive ut de første 100:
		// Håvard sitt forslag
		System.out.println("\nBare et skrudd eksempel på hva en kan. Limit er bra, ellers ville den fortsatt...");
		IntStream
		.range(0,999999999)
		//		.mapToDouble(n -> Double.valueOf(n)) // Er det samme, men mer tungvinte enn
		.mapToDouble(Double::valueOf)
		.map( n -> n/2978)
		.filter(n -> n % 2978 == 0) // Denne linjen var ikke Håvard som kom på. Jeg ville bare ikke vente sååååå lenge:)
		.limit(10)
		.forEach(System.out::println);


		List<String> folk = Arrays.asList("Al", "Skybert", "Farfarharetlangtnavn", "Farmor", "Håvard", "Jørn", "Andrea", "Børge");

		System.out.println("\nPersoner med navn lenger enn fem tegn, på en fin måte:");
		// Skrive ut alle navn i listen som er mer enn fem tegn, og hvor mange tegn de er.
		folk.stream()
		//		.peek(System.out::println)
		.filter(p -> p.length() > 5)
		.map(p -> p+"\t"+p.length())
		.forEach(System.out::println);

		// Lage en samling som inneholder alle personene som starter med "A" og lengde over fire.
		System.out.print("\nNavn som starter med F og lengde over 6: ");
		System.out.println(folk.stream()
				.filter(p -> p.startsWith("F"))
				.filter(p -> p.length() > 6)
				.collect(Collectors.toList()));


		// Lese fra fil og legge inn i objekter: se Flerkamp.java

		System.out.println("\nLese fra fil:");
		// Lese fra fil:
		// Hvis det ikke hadde vært i main kune en brukt getClass.getResource 
		// Merk spesialtilfelle. På denne måten MÅ en ikke innkapsle i try. Det må en uten streams.
		System.out.println(new BufferedReader(new InputStreamReader(StreamExamples.class.getResourceAsStream("bands.txt"))).lines()
				// Over: hvis du bruker linjen over i en annen metode enn main, bytt ut klassenavn.class med getClass()
				.filter(p -> p.length() > 8) // Alle bandnavn lenger enn 8 tegn
				.sorted((a, b) -> a.charAt(1) - b.charAt(1)) // sortert på andre bokstav i navnet
				//					.peek(System.out::println) // Lurkikk
				.map(n -> n.charAt(1)) // hent bare ut andre bokstav
				.collect(Collectors.toList())); // Samle til en liste

	}
}
