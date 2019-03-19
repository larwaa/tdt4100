package observable;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

import javafx.scene.paint.Color;

public class IdolFileSave implements IdolFan {

	@Override
	public void idolChanged(Idol idol, String propertyName, Object oldValue, Object newValue) {

		// Hva skal lagres
		String contentToAppend = "Endrer ";
		if (propertyName.equals(Idol.HAIR_COLOR_PROPERTY)) {
			contentToAppend += " hårfarge til " + idol.getHairColor()+"\n";
		} else if (propertyName.equals(Idol.HAIR_LENGTH_PROPERTY)) {
			contentToAppend += " hårlengde til " + idol.getHairLength()+"\n";
		}		

		// Finner filen:
		Path filePathObj = Paths.get("src/observable/idolchanges.txt");
		boolean fileExists = Files.exists(filePathObj);

		// Skriver:
		if(fileExists) {
			try {
				// Appending The New Data To The Existing File
				Files.write(filePathObj, contentToAppend.getBytes(), 
						StandardOpenOption.APPEND);
				System.out.print("Saved to file: "+contentToAppend);
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
		idol.setHairColor(Color.CYAN);
		idol.setHairLength(314);
		idol.setHairLength(33);
		idol.setHairLength(7);
	}
}
