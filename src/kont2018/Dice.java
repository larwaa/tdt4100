public class Dice {

	private final int[] valueCounters;

	public Dice(Iterator<Integer> dieValues) {
		int i = 0;
        while (dieValues.hasNext()){
        	valueCounters[i] = dieValues.next();
        	i++;
		}
	}
	/*
	public Dice(Iterable<Integer> dieValues) {
		int j = 0;
		for (int i : dieValues){
			valueCounters[j] = i;
			j++;
		}

	}
	*/

	public static void main(String[] args){
		Dice d1 = new Dice(Arrays.asList(1, 2, 0, 3, 0, 0, 1).iterator());

	}
//	@Override
//	public Iterator<Integer> iterator() {
//		return new DiceIterator(this);
//	}
//
//	*
//	 * @return the number of die values
//
//	public int getDieCount() {
//	}
//
//	*
//	 * Die values are considered ordered, with the smallest die values
//	 * at the lowest index. The value at a specific index
//	 * must be computed from the counters in valueCounters.
//	 * @param dieNum
//	 * @return the value of die number dieNum
//	 * @throws an appropriate exception, if dieNum is out of range
//
//	public int getDieValue(int dieNum) {
//	}
//
//	*
//	 * @param value
//	 * @return the number of dice with the provided value
//
//	public int getValueCount(int value) {
//	}
//
//	*
//	 * @param dice
//	 * @return true if all die values in the Dice argument appear in this Dice
//
//	public boolean contains(Dice dice) {
//	}
//
//	*
//	 * @param dice
//	 * @return true if this Dice and the one provided have exactly the same die values
//
//	public boolean isSame(Dice dice) {
//	}
//
//	*
//	 * @param dice a Dice object
//	 * @return a new Dice instance with the all the die values in
//	 * this Dice and the Dice argument combined
//
//	public Dice add(Dice dice) {
//	}
//
//	*
//	 * @param dice
//	 * @return a new Dice instance with the die values from this Dice, but
//	 * without those from the Dice argument
//
//	public Dice remove(Dice dice) {
//	}
}