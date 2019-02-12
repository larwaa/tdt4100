package mappeeksempel;

public class File {

	private Folder parentFolder;
	private String name;

	public String getName() {
		return name;
	}

	public Folder getParentFolder() {
		return parentFolder;
	}

	public File(String name, Folder parentFolder) {
		this.name = name;
		if (parentFolder == null) {
			throw new IllegalArgumentException("A file must be in a folder");
		}
		this.parentFolder = parentFolder;		
		// Men vi må jo oppdatere andre veien også, så folderen vet at den har fått en fil!
		// SKal dette gjøres i en annen plass i systemet, eller skal det gjøres fra File.java?
		// denne skal utvides til å vise hele stien fra rot-noden og ned
		// mulig løsning: parentFolder.addFile(this);
		parentFolder.addFile(this);
	}
	
	@Override
	public String toString() {
		if (parentFolder != null) // sikkerhetssjekk, unødvendig inntil videre.
			return parentFolder.toString() + name;
		return name;
	}


	public void move(Folder targetFolder) {
		if (parentFolder != null) {
			parentFolder.removeFile(this);
		}
		if (targetFolder != null) {
			targetFolder.addFile(this);
		}
		parentFolder = targetFolder;
	}

}
