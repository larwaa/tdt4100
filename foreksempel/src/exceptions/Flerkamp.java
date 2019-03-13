package exceptions;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import streams.StreamExamples;

public class Flerkamp {

	List<Deltaker> deltakere = new ArrayList<>();

	private void filTilDeltakerListeStreams(String fil) {
		System.out.println("Hallo?");
		new BufferedReader(new InputStreamReader(getClass().getResourceAsStream(fil))).lines()
		.peek(System.out::println)
		.skip(1)
		.map(l -> l.split(",\\s*"))
		.map(d -> deltakere.add(fromCols(d)))
		.forEach(d -> System.out.println("Lagt inn"+d)); // Hvis denne er kommentert ut vil det over aldri kjøres!
	}


	private void filTilDeltakerliste(String fil) throws IOException {
		File file = new File(fil); 

		BufferedReader br = new BufferedReader(new FileReader(file)); 
		String str; 
		System.out.println("\nSkal lese ut fra en fil på gamlemåten:");
		// Hoppe over første linje, den er bare overskrifter:
		br.readLine();

		while ((str = br.readLine()) != null) 
			deltakere.add(fromCols(str.split(",\\s*")));
		br.close();
	} 

	private Deltaker fromCols(String...cols) {
		return new Deltaker(cols[0], Integer.parseInt(cols[1]), 
				Double.parseDouble(cols[2]), Integer.parseInt(cols[3]), 
				Integer.parseInt(cols[4]), cols[5]);
	}


	public static void main(String[] args) {

		Flerkamp fk = new Flerkamp();
		
		// Gammel måte å hente ut fra fil:
		//		try {
		//			fk.filTilDeltakerliste("src/exceptions/flerkamp.txt");
		//		} catch (IOException e) {
		//			e.printStackTrace();
		//		}


		// Streamsmåte
		fk.filTilDeltakerListeStreams("flerkamp.txt");

		System.out.print("Før fjerning: ");
		fk.deltakere.forEach(System.out::println);
		fk.deltakere.removeIf(d -> d.getSausageeating() > 17);
		System.out.print("Etter fjerning: ");
		fk.deltakere.forEach(System.out::println);



	}

}
