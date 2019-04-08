package file;

import java.util.ArrayList;
import java.util.List;

public class Folder {
	
	private Folder parentFolder;
	private String name;
	private List<File> files = new ArrayList<>();
	private List<Folder> subFolders = new ArrayList<>();
	
	public Folder(String name, Folder parentFolder) {
		this.name = name;
		this.parentFolder = parentFolder;
		if (parentFolder != null) {
			// dårlig innkapsling!
			parentFolder.subFolders.add(this); 
		}
	}
	
	void printContent() {
		System.out.println(this);
		
		for (File file : files) {
			System.out.println(file);
		}
		
		for (Folder folder : subFolders) {
			folder.printContent();
		}
	}
	
	void addFile(File file) {
		this.files.add(file);
	}
	
	void removeFile(File file) {
		this.files.remove(file);
	}
	
	public String toString() {
		if (this.parentFolder == null) {
			return "/" + this.name;
		}
		return this.parentFolder.toString() + "/" + this.name;
	}
	
	
	public static void main(String[] args) {
		Folder root = new Folder("Rot",null);
		File rotfil = new File("rotfil.txt",root);
		Folder tmp = new Folder("tmp",root);
		root.printContent();
		System.out.println("\n");
		File tmpfil = new File("tmpfil.txt",tmp);
		Folder users = new Folder("users",root);
		Folder borgeh = new Folder("borgeh",users);
		File egenfil1 = new File("egenfil.txt", borgeh);
		File egenfil2 = new File("egenfil2.txt", borgeh);
		Folder div = new Folder("div",root);
		root.printContent();
		egenfil2.move(root);
		root.printContent();
		
	}
	
}
