@isTest
public class GenerateParenthesesApexClassTest {
	  @isTest static void baseScenarioMethod(){
        Integer n = 1;
          
        Test.startTest();
        	List<String> result = GenerateParenthesesApexClass.generateParenthesis(n);
        Test.stopTest();
        
        List<String> expectedResult = new List<String>{'()'};
          
        System.assertEquals(expectedResult,  result);
    }
    
    @isTest static void secondScenarioMethod(){
        Integer n = 3;
          
        Test.startTest();
        	List<String> result = GenerateParenthesesApexClass.generateParenthesis(n);
        Test.stopTest();
        
        List<String> expectedResult = new List<String>{'((()))', '(()())', '(())()', '()(())','()()()' };
          
        System.assertEquals(expectedResult,  result);
    }
}