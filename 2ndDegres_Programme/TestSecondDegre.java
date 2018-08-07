package application;


import static org.junit.Assert.*;
import static org.testfx.api.FxAssert.verifyThat;
import static org.testfx.matcher.control.LabeledMatchers.hasText;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apiguardian.api.API;
import org.json.simple.JSONObject;
import org.junit.Test;

import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyCode;
import testrailApi.APIClient;
import javafx.scene.control.TextArea;

/**
 * ***********************************************************
 * ***********************************************************
 * Se charge de lancer des differents tests.
 * 
 * @author mor
 ************************************************************
 ************************************************************
 */


public class TestSecondDegre extends TestFx{




		 
		
	 // Déclaration des références vers des id.
	 final String lngButtonId =  "#lngButton";
	 final String inputLabelId = "#inputLabel";
	 final String resultLabelId = "#resultLabel";
	 final String submitButtonId = "#submitButton";
	 final String menuButtonId = "Menu";
	 final String menuHistItemId = "#historique";
	 final String menuHelpItemId = "#help";
	 
	 
	

	 
	
	/**
	 * ***************************************************
	 * ****************************************************
	 * Ce test s'assure que les deux langues possibles sont
	 * 'FR/ENG'
	 * ****************************************************
	 * ****************************************************
	 */
	 //id = 3
	@Test
	public void testTranslate() throws Exception{		
		
			System.out.println("***  testTranslate  ***");
			JSONObject c = (JSONObject) api.sendGet("get_case/3");
			String step="";
			 //verifie si l'objet n'est pas nul.
			assertNotNull(lngButtonId);
			verifyThat(lngButtonId, hasText("FR"));
			clickOn(lngButtonId);
			step+="Cliquer FR 1ere fois\n";
			sleep(1000);
			verifyThat(lngButtonId, hasText("ENG"));
			clickOn(lngButtonId);
			step+= "Cliquer EN 1ere fois\n";
			sleep(1000);
			verifyThat(lngButtonId, hasText("FR"));
			clickOn(lngButtonId);
			step+= "Cliquer FR 2e fois\n";
			sleep(1000);
			verifyThat(lngButtonId, hasText("ENG"));
			clickOn(lngButtonId);
			step+= "Cliquer EN 2e fois";
			sleep(1000);
			verifyThat(lngButtonId, hasText("FR"));
			
			c.put("custom_steps", step);
			c.put("custom_preconds","lng FR/EN");
			
//			Map cc = new HashMap();
//			
//			cc.put("status_id", "1");
//			cc.put("custom_step_results", "pass");
//			
			api.sendPost("update_case/3",c);
//			api.sendPost("add_result_for_case/3/3",cc);
//			
//			System.out.println(c);
			

			
	}
	
	/**
	 *****************************************************
	 *****************************************************
	 * Ce test s'assure que la traduction en 'FR/ENG' est
	 * bien effectuee apres click sur le bouton 'FR/ENG'.
	 * 
	 ****************************************************
	 ****************************************************
	 */
	//id=4
	@Test
	public void testTranslateButton() throws Exception{
			System.out.println("***  testTranslateButton  ***");
			
			//creer object c
			//JSONObject c = (JSONObject) api.sendGet("get_case/4");
			
			//creaton step step
			//String step="";
			
			Button clearButtonId = find("Effacer");
			
			// verifie que les objets ne sont pas null.
			assertNotNull(lngButtonId);
			assertNotNull(inputLabelId);
			assertNotNull(resultLabelId);
			assertNotNull(submitButtonId);
			assertNotNull(clearButtonId);
			
			verifyThat(lngButtonId, hasText("FR"));
			//step+="Effecer et tester les bouton de FR/EN";
			sleep(2000);
			clickOn(lngButtonId);
			sleep(2000);
			verifyThat(lngButtonId, hasText("ENG"));
			// Verifie si la traduction a bien ete effectue en ENG.
			verifyThat(inputLabelId, hasText("Enter the value of a,b and c :"));
			verifyThat(resultLabelId, hasText("Result"));
			verifyThat(submitButtonId, hasText("Resolve"));
			verifyThat(clearButtonId, hasText("Clear"));
			
			clickOn(lngButtonId);
			sleep(2000);
			verifyThat(lngButtonId, hasText("FR"));
			// Verifie si la traduction a bien ete effectuee en FR.
			verifyThat(inputLabelId, hasText("Entrer les valeurs de a,b et c"));
			verifyThat(resultLabelId, hasText("R�sultat"));
			verifyThat(submitButtonId, hasText("R�soudre"));
			verifyThat(clearButtonId, hasText("Effacer"));
			
			//c.put("custom_steps", step);
			//c.put("custom_preconds","Ce test s'assure que les deux langues possibles sont FR/EN");
			//api.sendPost("update_case/4",c);
			
			
			//ajouter resultat cas de test
//			Map cc = new HashMap();
//			cc.put("status_id", "1");
//			cc.put("custom_step_results", "pass");
//			api.sendPost("add_result_for_case/3/4",cc);
			
	}

	/**
	 *******************************************************
	 *******************************************************
	 * Ce test s'assure qu'une nouvelle fenetre est affichee
	 * apres click sur le bouton 'historique'.
	 ********************************************************
	 ********************************************************
	 */
	//id = 5
	@Test
	public void testHistoriqueClick() throws Exception{
		
		//creer object c
		//JSONObject c = (JSONObject) api.sendGet("get_case/5");
		
		//creaton step step
		//String step="";
		
		System.out.println("***  testHistoriqueClick  ***");
		// verifie si les objets ne sont pas nuls.
		assertNotNull(menuButtonId);
		assertNotNull(menuHistItemId);
		// click sur le bouton 'Menu'.
		clickOn(menuButtonId);
		sleep(2000);
		// click sur le bouton 'historique'.
		clickOn(menuHistItemId);
		
		//step+="Clique sur bouton historique";
		
		sleep(2000);
		
//		c.put("custom_steps", step);
//		c.put("custom_preconds","Ce test s'assure qu'une nouvelle fenetre est affichee apres click sur le bouton historique");
//		api.sendPost("update_case/5",c);
//		
//	
//		
//		//ajouter resultat cas de test
//		Map cc = new HashMap();
//		cc.put("status_id", "1");
//		cc.put("custom_step_results", "pass");
//		api.sendPost("add_result_for_case/3/5",cc);
//	
	}

	/**
	 *******************************************************
	 *******************************************************
	 * Ce test s'assure qu'une fenetre d'aide est ouverte
	 * apres click sur le bouton help''.
	 *******************************************************
	 *******************************************************
	 */
	//id = 6
	@Test
	public void TesthandleHelpClick() throws Exception{
		
		//creer object c
		//JSONObject c = (JSONObject) api.sendGet("get_case/6");
				
		//creaton step step
		//String step="";
		
		System.out.println("***  testHandleHelpClick  ***");
		// vérifie si les objets ne sont pas nuls.
		assertNotNull(menuButtonId);
		assertNotNull(menuHelpItemId);
		
		clickOn(menuButtonId);
		
		//step+="Clique sur bouton d'aide ou help";
		
		sleep(2000);
		// click sur le bouton d'aide 'help'.
		clickOn(menuHelpItemId);
		sleep(5000);
		
		//c.put("custom_steps", step);
		//c.put("custom_preconds","Ce test s'assure qu'une fenetre d'aide est ouverte apres click sur le bouton help");
		//api.sendPost("update_case/6",c);
	
	
		//ajouter resultat cas de test
//		Map cc = new HashMap();
//		cc.put("status_id", "1");
//		cc.put("custom_step_results", "pass");
//		api.sendPost("add_result_for_case/3/6",cc);
	}

	/**
	 ******************************************************
	 *******************************************************
	 * Ce test s'assure que les differents champs sont initialises
	 * apres click sur le bouton 'clear'.
	 *******************************************************
	 *******************************************************
	 */
	//id = 7
	@Test
	public void testClearButton() throws Exception{
		
		//creer object c
		//JSONObject c = (JSONObject) api.sendGet("get_case/7");
				
		//creaton step step
		//String step="";
		
		System.out.println("***  testClearButton  ***"); 
		 TextField firstOpId = find("#firstOp");
		 TextField secondOpId = find("#secondOp");
		 TextField thirdOpId = find("#thirdOp");
		 TextArea resultFieldId = find("#resultField");
		
		assertNotNull(firstOpId);
		assertNotNull(secondOpId);
		assertNotNull(thirdOpId);
		assertNotNull(resultFieldId);
		
		clickOn(firstOpId);
		firstOpId.setText("4");
		sleep(1000);
		clickOn(secondOpId);
		secondOpId.setText("3");
		sleep(1000);
		clickOn(thirdOpId);
		thirdOpId.setText("1");
		sleep(1000);
		resultFieldId.setText("les solutions sont:");
		sleep(1000);
		
		Button clearButtonId = find("Effacer");
		clickOn(clearButtonId);
		
		//step+="Clique sur bouton effacer";
		
		sleep(2000);

		//c.put("custom_steps", step);
		//c.put("custom_preconds","Ce test s'assure que les differents champs sont initialises apres click sur le bouton clear");
		//api.sendPost("update_case/7",c);
		
		
		
		//ajouter resultat cas de test
//		Map cc = new HashMap();
//		cc.put("status_id", "1");
//		cc.put("custom_step_results", "pass");
//		api.sendPost("add_result_for_case/3/7",cc);
	}
	
	
	
	/**
	 ********************************************************************
	 ********************************************************************
	 * Ce test s'assure que la methode de resolution resoud sans probleme
	 * une equation du second degres.
	 ********************************************************************
	 ********************************************************************
	 */
	//id = 8
	@Test
	public void testResolution() throws Exception{
		
		//creer object c
		//JSONObject c = (JSONObject) api.sendGet("get_case/8");
						
		//creaton step step
		//String step="";
		
		System.out.println("***  testResolution  ***");
		// Récupération des références vers des id.
		TextField firstOpId = find("#firstOp");
		TextField secondOpId = find("#secondOp");
		TextField thirdOpId = find("#thirdOp");
		TextArea resultFieldId = find("#resultField");
		Button lngButtonId = find("#lngButton");
		Button clearButton = find("Effacer");
		
		//step+="Etap1: recuperation des id\n";

		// vérfie si les objets ne sont pas nuls.
		assertNotNull(firstOpId);
		assertNotNull(secondOpId);
		assertNotNull(thirdOpId);
		assertNotNull(resultFieldId);
		assertNotNull(lngButtonId);

		// Cas où le système admet une solution double x1 et x2.
		clickOn(clearButton);
		clickOn(firstOpId);
		firstOpId.setText("2");
		sleep(1000);
		clickOn(secondOpId);
		secondOpId.setText("5");
		sleep(1000);
		clickOn(thirdOpId);
		thirdOpId.setText("3");
		sleep(1000);

		clickOn(submitButtonId);
		sleep(2000);

		System.out.println(resultFieldId);

		if (lngButtonId.getText().equals("FR")) {
			assertTrue(resultFieldId.getText().equals("Les solutions sont x1: -1.5 x2: -1.0 S = {-1.5 , -1.0}"));
		} else if (lngButtonId.getText().equals("ENG")) {
			assertTrue(resultFieldId.getText().equals("Solutions are x1: -1.5 x2: -1.0 S = {-1.5 , -1.0}"));
		}
		
		//step+="Etape2: cas ou le systeme admet deux solutions x1 et x2 dans R\n";
		
		

		// cas avec les valeurs où le système n'admet pas de solution
		// dans R.
		clickOn(firstOpId);
		firstOpId.setText("1");
		sleep(1000);
		clickOn(secondOpId);
		secondOpId.setText("2");
		sleep(1000);
		clickOn(thirdOpId);
		thirdOpId.setText("3");
		sleep(1000);

		clickOn(submitButtonId);
		sleep(2000);

		if (lngButtonId.getText().equals("FR")) {
			assertTrue(resultFieldId.getText().equals("Le syst�me n'admet pas de solutions dans R"));
		} else if (lngButtonId.getText().equals("ENG")) {
			assertTrue(resultFieldId.getText().equals("There is no solutions in R"));
		}
		
		//step+="Etape3: Cas ou le systeme n'admet pas de solution dans R\n";

		// Cas où le système admet une solution double x0.
		clickOn(clearButton);
		clickOn(firstOpId);
		firstOpId.setText("4");
		sleep(1000);
		clickOn(secondOpId);
		secondOpId.setText("-12");
		sleep(1000);
		clickOn(thirdOpId);
		thirdOpId.setText("9");
		sleep(1000);

		clickOn(submitButtonId);
		sleep(2000);

		if (lngButtonId.getText().equals("FR")) {
			assertTrue(resultFieldId.getText().equals("Le syst�me admet une solution double x0 :1.5 S = {1.5}"));
		} else if (lngButtonId.getText().equals("ENG")) {
			assertTrue(resultFieldId.getText().equals("Double solution x0 :1.5S = {1.5}"));
		}
		//step+="Etape4: cas ou le systeme admet une solution double x0 dans R";
		
		
		//c.put("custom_steps", step);
		//c.put("custom_preconds","Ce test s'assure que la methode de resolution resoud sans probleme une equation du second degres");
		//api.sendPost("update_case/8",c);
		
		//ajouter resultat cas de test
//		Map cc = new HashMap();
//		cc.put("status_id", "1");
//		cc.put("custom_step_results", "pass");
//		api.sendPost("add_result_for_case/3/8",cc);
		
		
//		RESOLUTION FIN
		
		
		

	}
	
	

	/**
	 ********************************************************************
	 ********************************************************************
	 * Ce test s'assure que la méthode de résolution affiche un message 
	 * d'erreur lorsqu'on saisit des lettres.
	 ********************************************************************
	 ********************************************************************
	 */
	@Test
	public void testResolutionSaisieLettres() throws Exception {
		
		//creer object c
		//JSONObject c = (JSONObject) api.sendGet("get_case/8");
								
		//creaton step step
		//String step="";
		
		
		
		// Récupération des références vers des id.
		TextField firstOpId = find("#firstOp");
		TextField secondOpId = find("#secondOp");
		TextField thirdOpId = find("#thirdOp");
		Button clearButton = find("Effacer");
		TextArea resultFieldId = find("#resultField");
		
		//step+="Etape1: Recuperation des id";

		// vérfie si les objets ne sont pas nuls.
		assertNotNull(firstOpId);
		assertNotNull(secondOpId);
		assertNotNull(thirdOpId);
		assertNotNull(submitButtonId);
		assertNotNull(clearButton);
		assertNotNull(resultFieldId);
		
		//step+="Etape2: Verifier les objet non nuls";
		
		clickOn(clearButton);
		clickOn(firstOpId);
		firstOpId.setText("lh");
		sleep(1000);
		clickOn(secondOpId);
		secondOpId.setText("ng");
		sleep(1000);
		clickOn(thirdOpId);
		thirdOpId.setText("7");
		sleep(1000);
		
		//step+="Etape3: Saisi de valeurs non valides comme des lettres";

		clickOn(submitButtonId);
		sleep(3000);
		assertTrue(resultFieldId.getText().equals(""));
		
		// appui sur la touche entrée (pour fermer le popup).
		push(KeyCode.ENTER);
		sleep(2000);
		
		
		//c.put("custom_steps", step);
		//c.put("custom_preconds","Ce test s'assure que la méthode de résolution affiche un message d'erreur lorsqu'on saisit des lettres");
		//api.sendPost("update_case/9",c);
		
		//ajouter resultat cas de test
//		Map cc = new HashMap();
//		cc.put("status_id", "1");
//		cc.put("custom_step_results", "pass");
//		api.sendPost("add_result_for_case/3/9",cc);
		
	}
	
	
}
