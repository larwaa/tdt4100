package mappeeksempel;

public class FoldersOnly implements FindCriterion {

	@Override
	public boolean keepFolder(Folder folder) {
		System.out.println("FC True for folder " + folder);
		return true;
	}

	@Override
	public boolean keepFile(File file) {
		System.out.println("FC False for file " + file);
		return false;
	}
}
