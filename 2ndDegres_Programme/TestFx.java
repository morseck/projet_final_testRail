package application;


import org.junit.Before;
import org.testfx.framework.junit5.ApplicationTest;

import javafx.scene.Node;
import javafx.stage.Stage;
import testrailApi.APIClient;

/**
 * 
 * @author benjamin
 *
 */
public class TestFx extends ApplicationTest {
	
	
	//on instancie l'api
public APIClient api = new APIClient("http://localhost/CQML/testrail");

	/**
	 ************************************************************
	 ************************************************************
	 * Se charge de lancer l'application avant le début des tests.
	 * @throws Exception
	 * ***********************************************************
	 * ***********************************************************
	 */
	@Before
	public void setUpClass() throws Exception{
		api.setUser("mor0093@gmail.com");
		api.setPassword("touba");
		ApplicationTest.launch(Main.class);
	}
	
	@Override
	public void start(Stage stage) throws Exception{
		stage.show();
	}
	/**
	 * ***********************************************************
	 * ***********************************************************
	 * Permet de récupèrer la valeur dans Id dans le fichier 
	 * 'MainScene.fxml'
	 * 
	 * @param query
	 * @return
	 * ***********************************************************
	 * ***********************************************************
	 */
	public <T extends Node> T find(final String query){
		return (T) lookup(query).queryAll().iterator().next();
	}

	
	
}



