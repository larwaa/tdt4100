package file;

public class File {
	
	private Folder parentFolder;
	private String name;
	
	public String getName() {
		return this.name;
	}
	
	public Folder getParentFolder() {
		return this.parentFolder;
	}
	
	public void move(Folder targetFolder) {
		if (this.parentFolder != null) {
			this.parentFolder.removeFile(this);
		}
		if (targetFolder != null) {
			targetFolder.addFile(this);
			this.parentFolder = targetFolder;
		}
	}
	
	public File(String name, Folder parentFolder) {
		this.name = name;
		
		if (parentFolder == null) {
			throw new IllegalArgumentException("All files must be in a folder");
		}
		
		this.parentFolder = parentFolder;
		parentFolder.addFile(this);
	}
	
	@Override
	public String toString() {
		return this.parentFolder.toString() + "/" + this.name;
	}
}
