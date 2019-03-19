package observable;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

import javafx.scene.paint.Color;

public class F_IdolFileSave implements IdolFan {

	// Alt denne klassen trenger er override, sånn det er laget nå.
	@Override
	public void idolChanged(Idol idol, String propertyName, Object oldValue, Object newValue) {

		// Hva skal lagres
		// TODO

		// Finner filen:
		Path filePathObj = Paths.get("src/observable/idolchanges.txt");
		boolean fileExists = Files.exists(filePathObj);

		// Skriver:
		if(fileExists) {
			try {
				// Appending The New Data To The Existing File
				// TODO
				
			} catch (IOException ioExceptionObj) {
				System.out.println("Problem Occured While Writing To The File= " + ioExceptionObj.getMessage());
			}
		} else {
			System.out.println("File Not Present! Please Check!");
		}       

	}
	public static void main(String[] args) {
		final Idol idol = new Idol();
		final IdolFan filesave = new IdolFileSave();
		idol.addIdolFan(filesave);
		idol.setHairColor(Color.BLACK);
		idol.setHairLength(220);
		idol.setHairLength(220);
		idol.setHairLength(10);
	}
}
