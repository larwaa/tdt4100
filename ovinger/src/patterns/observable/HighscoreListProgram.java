package patterns.observable;

import java.util.Scanner;

public class HighscoreListProgram implements HighscoreListListener{

    private HighscoreList highscoreList;

    public void init(){
        highscoreList = new HighscoreList(10);
        highscoreList.addHighscoreListListener(this);
    }

    public void run(){
        Scanner sc = new Scanner(System.in);
        int i = sc.nextInt();
        while (i != -1){
            highscoreList.addResult(i);
            i = sc.nextInt();
        }
    }

    @Override
    public void listChanged(HighscoreList highscoreList, int i) {
        System.out.println("Posisjonsargument: " + i + ", liste: " + highscoreList);
    }

    public static void main(String[] args){
        HighscoreListProgram p1 = new HighscoreListProgram();
        p1.init();
        p1.run();
    }
}
