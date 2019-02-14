package encapsulation;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class VehicleApp extends Application{

	@Override
	public void start(final Stage primaryStage) throws Exception {
		primaryStage.setTitle("Vehicle");
		primaryStage.setScene(new Scene(FXMLLoader.load(VehicleApp.class.getResource("Vehicle.fxml"))));
		primaryStage.show();
	}

	public static void main(final String[] args) {
		VehicleApp.launch(args);
	}
}