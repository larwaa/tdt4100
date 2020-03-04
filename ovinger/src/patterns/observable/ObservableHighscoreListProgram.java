package patterns.observable;

import java.util.Scanner;

public class ObservableHighscoreListProgram implements ObservableListListener{
	
	 private ObservableHighscoreList observableHighscoreList;
	
	 public void init(){
	        observableHighscoreList = new ObservableHighscoreList(3);
	        observableHighscoreList.addObservableListListener(this);
	    }
	
	 public void run(){
		Scanner sc = new Scanner(System.in);
		int i = sc.nextInt();
		while (i != -1){
			observableHighscoreList.addResult(i);
			i = sc.nextInt();
	    }
	}

	@Override
	public void listChanged(ObservableList observableList, int index) {
		System.out.println(observableList + " pos: " + index);
	}
	
	public static void main(String[] args) {
		ObservableHighscoreListProgram p = new ObservableHighscoreListProgram();
		p.init();
		p.run();
	}
	
}
