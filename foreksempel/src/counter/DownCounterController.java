package counter;

import javafx.application.Application;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.TextField;
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class DownCounterController extends Application{

	DownCounter downCounter = new DownCounter(3);
	
	@FXML TextField input;
	@FXML Text output;

	@FXML
	void handleNew() {
		downCounter = new DownCounter(Integer.valueOf(input.getText()));
		updateOutput();
	}

	void updateOutput() {
		String outputString = "Ferdig? ";
		if (downCounter.isFinished()) {
			outputString += "Ja";
		} else {
			outputString += "Nei";			
		}
		output.setText(outputString);
	}
	
	@FXML
	void handleCountDown() {
		downCounter.countDown();
		updateOutput();
	}
	@Override
	public void start(final Stage primaryStage) throws Exception {
		primaryStage.setTitle("DownCounter");
		primaryStage.setScene(new Scene(FXMLLoader.load(DownCounter.class.getResource("DownCounter.fxml"))));
		primaryStage.show();
	}

	public static void main(final String[] args) {
		Application.launch(args);
	}
}
