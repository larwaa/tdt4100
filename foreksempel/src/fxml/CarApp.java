package fxml;


public class CarApp extends Application{
	@Override
	public void start(final Stage primaryStage) throws Exception {
		primaryStage.setTitle("Car");
		primaryStage.setScene(new Scene(FXMLLoader.load(CarControllerPre.class.getResource("CarGUI.fxml"))));
		primaryStage.show();
	}
	public static void main(final String[] args) {
		Application.launch(args);
	}
}
