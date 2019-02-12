package mappeeksempel;

import java.util.ArrayList;
import java.util.List;

public class Folder {

	private Folder parentFolder;
	private String name;
	private List<File> files = new ArrayList<>();
	private List<Folder> subFolders= new ArrayList<>();


	public Folder( String name, Folder parentFolder) {
		this.parentFolder = parentFolder;
		this.name = name;
		if (parentFolder != null)
			parentFolder.subFolders.add(this);
		// Her rotet vi ordentlig til med innkapsling. Skriv om!
		
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

	@Override
	public String toString() {
		if (parentFolder == null)
			return "/";
		return parentFolder + name + "/";
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
		//		users.move(borgeh);
		//		root.printContent();

	}
}
