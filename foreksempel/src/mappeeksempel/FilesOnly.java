package mappeeksempel;

public class FilesOnly implements FindCriterion {

	@Override
	public boolean keepFolder(Folder folder) {
		System.out.println("FC True for folder " + folder);
		return false;
	}

	@Override
	public boolean keepFile(File file) {
		System.out.println("FC False for file " + file);
		return true;
	}
}
