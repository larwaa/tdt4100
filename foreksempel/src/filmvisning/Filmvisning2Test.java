package filmvisning;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.junit.Test;

public class Filmvisning2Test {



	@Test
	public void testLagNyVisning() {
		Sal2 sal = new Sal2("Nova 1", 250);
		Film2 film = new Film2("Bad Santa", 11, "USA");
		Filmvisning2 fv = new Filmvisning2(film, sal, 1, 85);
		//		sal.addVisning(fv);
	}

	@Test
	public void testLeggTilToVisningerUlikeTidspunktSammeSal() {
		// Denne bare sjekker at en kan legge til to visninger på
		// ulike tidspunkt, men ikke at det legges korrekt til.
		// Dette sjekkes ved uthenting av visninger.
		Sal2 sal = new Sal2("Nova 1", 250);
		Film2 film = new Film2("Bad Santa", 11, "USA");
		Filmvisning2 fv = new Filmvisning2(film, sal, 1, 85);
		Filmvisning2 fv2 = new Filmvisning2(film, sal, 2, 85);
	}


	@Test (expected = IllegalArgumentException.class)
	public void testLeggTilNyVisningBruktTidspunkt() {

		Sal2 sal = new Sal2("Nova 1", 250);
		Film2 film = new Film2("Bad Santa", 11, "USA");
		Filmvisning2 fv = new Filmvisning2(film, sal, 1, 85);
		Filmvisning2 fv2 = new Filmvisning2(film, sal, 1, 85);
	}


	@Test 
	public void testGetVisningerFromSal() {
		Sal2 sal = new Sal2("Nova 1", 250);
		Film2 film = new Film2("Bad Santa", 11, "USA");
		Filmvisning2 fv1 = new Filmvisning2(film, sal, 1, 85);
		Filmvisning2 fv2 = new Filmvisning2(film, sal, 2, 85);
		assertEquals(fv1, sal.getVisningPåTid(1));
		assertEquals(fv2, sal.getVisningPåTid(2));
	}

	@Test 
	public void testGetVisningerFromFilm() {
		Sal2 sal = new Sal2("Nova 1", 250);
		Sal2 sal2 = new Sal2("Prinsen 2", 150);
		Film2 film = new Film2("Bad Santa", 11, "USA");
		Filmvisning2 fv1 = new Filmvisning2(film, sal, 1, 85);
		Filmvisning2 fv2 = new Filmvisning2(film, sal2, 2, 85);
		assertEquals(fv1, film.getVisningPåTid(1));
		assertEquals(fv2, film.getVisningPåTid(2));
	}

	@Test
	public void testReturnerFilmPåTidspunkt() {
		Sal2 sal = new Sal2("Nova 1", 250);
		Film2 film = new Film2("Bad Santa", 11, "USA");
		Filmvisning2 fv = new Filmvisning2(film, sal, 1, 85);
		assertEquals(fv, sal.getVisningPåTid(1));
	}

	@Test 
	public void testReturnerFilmPåTomtTidspunkt() {
		Sal2 sal = new Sal2("Nova 1", 250);
		Film2 film = new Film2("Bad Santa", 11, "USA");
		Filmvisning2 fv = new Filmvisning2(film, sal, 1, 85);
		assertEquals(null, sal.getVisningPåTid(2));
	}

	@Test
	public void testLeggTilNyFilmSinTid() {
		Sal2 sal = new Sal2("Nova 1", 250);
		Film2 film = new Film2("Bad Santa", 11, "USA");
		Filmvisning2 fv = new Filmvisning2(film, sal, 1, 85);
		assertEquals(1, fv.getTid());
	}

	@Test
	public void testEndreTid() {
		Sal2 sal = new Sal2("Nova 1", 250);
		Film2 film = new Film2("Bad Santa", 11, "USA");
		Filmvisning2 fv = new Filmvisning2(film, sal, 1, 85);
		fv.flyttTidspunkt(2);
		assertEquals(2, fv.getTid());
	}

	@Test (expected = IllegalArgumentException.class)
	public void testEndreTidMenBooket() {
		Sal2 sal = new Sal2("Nova 1", 250);
		Film2 film = new Film2("Bad Santa", 11, "USA");
		Filmvisning2 fv = new Filmvisning2(film, sal, 1, 85);
		Filmvisning2 fv2 = new Filmvisning2(film, sal, 2, 85);		
		fv2.flyttTidspunkt(1);
	}
	@Test
	public void testEndreFilm() {
		Sal2 sal = new Sal2("Nova 1", 250);
		Film2 film = new Film2("Bad Santa", 11, "USA");
		Film2 film2 = new Film2("The Hangover", 15, "USA");
		Filmvisning2 fv = new Filmvisning2(film, sal, 1, 85);
		
		fv.setFilm(film2);
		
		assertEquals(fv, film2.getVisningPåTid(1)); // Henter filmen på tidspunkt 1
		assertEquals(0, film.getAntallVisninger());
	}

}
