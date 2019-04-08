package patterns.observable;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class HighscoreList {

    private int maxSize;
    private List<Integer> results;
    private List<HighscoreListListener> highscoreListListeners = new ArrayList<>();

    public HighscoreList(int maxSize){
        if (maxSize < 0){
            throw new IllegalArgumentException("Må være større enn 0.");
        }
        this.maxSize = maxSize;
        results = new ArrayList<>(maxSize);
    }

    public void addResult(int result){
    	if (isHighscore(result)) {
    		List<Integer> oldResults = new ArrayList<>(results);
    		results.add(result);
    		this.results = results.stream()
    			.sorted()
    			.limit(maxSize)
    			.collect(Collectors.toList());
    		updateHighscoreListListener(oldResults);
    	}
    }
    
    private void updateHighscoreListListener(List<Integer> oldResults) {
    	boolean changed = false;
    	int tempIndex = -1;
    	
    	for (int i = 0; i < size(); i++) {
    		if (! changed) {
    			if (i > oldResults.size() - 1) {
    				changed = true;
    				tempIndex = i;
    			} else if (! changed && getElement(i) != oldResults.get(i)) {
    				changed = true;
    				tempIndex = i;
    			}
    		}
    	}
    	
    	if (tempIndex != -1) {
    		int index = tempIndex;
        	highscoreListListeners.forEach((l) -> l.listChanged(this, index));
    	} else {
    		throw new UnknownError();
    	}
    }
    
    private boolean isHighscore(int result) {
    	return results.stream().anyMatch((p) -> p > result) || (size() < maxSize);
    }
    
    public void addHighscoreListListener(HighscoreListListener highscoreListListener){
    	if (! highscoreListListeners.contains(highscoreListListener)) {
            highscoreListListeners.add(highscoreListListener);
    	}
    }
    
    public void removeHighscoreListListener(HighscoreListListener highscoreListListener){
        highscoreListListeners.remove(highscoreListListener);
    }

    public int getElement(int i){
        return results.get(i);
    }

    public int size(){
        return results.size();
    }
    
    @Override
    public String toString() {
    	return results.toString();
    }
    
    public static void main(String[] args){
    	HighscoreList highscore = new HighscoreList(3);
    	highscore.addResult(5);
    	System.out.println(highscore);
    }
}
