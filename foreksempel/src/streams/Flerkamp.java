package streams;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Flerkamp {

	List<Deltaker> deltakere = new ArrayList<>();

	private void readFile() throws URISyntaxException {

		// Slik kan man finne ut hvilken folder classfilene ligger i:
		// URI er en grei plass å lagre denne for senere bruk med Path.
		
		// Setter den sammen av folderen til classfilene og pakkenavnet.
		URI classUri = URI.create((getClass().getProtectionDomain().getCodeSource().getLocation().toString()));
		System.out.println("Folder: "+classUri + "\nPakkenavn: "+getClass().getPackageName());
		// Det over brukes ikke nå, det er bare et eksempel for å vise at en kan finne ut hvor en er i folderne.

		
		// Eksempel for å lese ut innholdet av en katalog.
		Path path = Paths.get("src/streams/flerkamp.txt");
		try(Stream<Path> subPaths = Files.walk(path)) {
//			subPaths.forEach(System.out::println);
		}
		catch (Exception e) {
			// TODO: handle exception
		}

		System.out.println();

		// Her kommer selve streams-metoden i bruk:
		// Hente ut linje for linje fra en fil:
		try { // Påkrevd try siden en leser fra fil.
			// Her vet jeg hvor denne filen ligger i forhold til Paths.get, så hardkoder. Kan gjøres som overfor...
			Files.lines(Paths.get("src/streams/flerkamp.txt"))
			
			// Nå er hvert objekt en String, linje fra filen.
			.skip(1) // Den første linjen er overskrift, dropper den.
			
			// n er linjen, n settes til kall på fromCols med en liste av strenger
			.map(n -> fromCols(n.split(",\\s*"))) // Splitter på "," og valgfritt antall mellomrom. (søk opp regexp)

			// d er Deltakerobjekter fra linjen over. Nå legges hvert av dem til i lista.
			.forEach(d -> deltakere.add(d)); // Legg hvert Deltakerobjekt til deltakerlisten.
		} catch (IOException e) {
			// Har ikke gjort noe spesielt med feilhåndteringen.
			e.printStackTrace();
		} finally {
		}
	}

	
	private void readFile_old(String fil) throws FileNotFoundException {
		  File file = new File(fil); 
		  
		  BufferedReader br = new BufferedReader(new FileReader(file)); 
		  
		  String str; 
		  System.out.println("\nSkal lese ut fra en fil på gamlemåten:");
		  try {
			while ((str = br.readLine()) != null) 
			    System.out.println(str);
		} catch (IOException e) {
			e.printStackTrace();
		} 
		  } 
		
	
	
	// Denne brukes av readFile. Den parser en streng (linje fra filen) og oppretter et Deltakerobjekt.
	// Dette mates tilbake i strømmen.
	private Deltaker fromCols(String...cols) {
		return new Deltaker(cols[0], Integer.parseInt(cols[1]), 
				Double.parseDouble(cols[2]), Integer.parseInt(cols[3]), 
				Integer.parseInt(cols[4]), cols[5]);
	}

	public static void main(String[] args) throws URISyntaxException {
		Flerkamp fk = new Flerkamp();
		fk.readFile(); // Leser via stream og legger Deltakere inn i fk

		// Nå skal alle deltakerne ha blitt lagt inn i listen. Så en enkel stream-måte å skrive dem ut på,
		// println kaller toString i hvert Deltakerobjekt på veien.
//		fk.deltakere.stream().forEach(System.out::println);

		// Hva med å skrive ut alle navnene til deltakerne? Tenk at data flyter fra venstre mot høyre og endres.
		System.out.println("Deltakere: "+fk.deltakere.stream()
		.map(x -> x.getName()).collect( Collectors.joining( ", " )));
		
		// Hva med å finne deltakerne som fikk minst 10 poeng på ballongskyting og poker?
		fk.deltakere.stream()  // Enhver Collection kan streames!
		.filter(x -> x.getBalloonshooting() >= 10 && x.getPoker() >= 10)
		.forEach(p -> System.out.println("\nMinst ti poeng i poker og ballongskyting: "+p.getName()));		
		
		// Så, for syns skyld lesing av filen på en av de gamle måtene:
		// Fjerne kommentarer under hvis du vil se den gamle måten å lese ut på:
//		try {
//			fk.readFile_old("C:/Users/borge/tdt4100-v2019-underviser/git/tdt4100-v2019-students/foreksempel/target/test-classes/streams/flerkamp.txt");
//		} catch (FileNotFoundException e) {
//			e.printStackTrace();
//		}
	}
}
