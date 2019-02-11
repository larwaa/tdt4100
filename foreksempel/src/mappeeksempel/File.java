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
		if (parentFolder == null)
			throw new IllegalAccessException("En fil må være i en folder...")
		this.parentFolder = parentFolder;
	}
	
	

}
