package chess.v0;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class ChessApp extends Application{
	
    @Override
    public void start(Stage primaryStage) throws Exception {
        primaryStage.setTitle("Chess");
        
        Parent parent = FXMLLoader.load(ChessApp.class.getResource("Chess.fxml"));
		
        primaryStage.setScene(new Scene(parent));
        primaryStage.show();
    }
	    
    public static void main(String[] args) {
    	Application.launch(args);
    }
}