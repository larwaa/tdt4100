package of8;

import java.util.Comparator;

public class MedalsComparator implements Comparator<Athlete>{

	@Override
	public int compare(Athlete o1, Athlete o2) {
		// TODO Auto-generated method stub
		return o1.getNumberOfMedals() - o2.getNumberOfMedals();
	}

}
