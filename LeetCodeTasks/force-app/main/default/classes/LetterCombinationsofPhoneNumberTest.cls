@isTest
public class LetterCombinationsofPhoneNumberTest {
    @isTest static void positiveScenarioMethod(){
        String digits = '24';
        
        Test.startTest();
        	List<String> result = LetterCombinationsofPhoneNumber.letterCombinations(digits);
        Test.stopTest();
        
        List<String> expectedResult = new List<String>{'ag','ah','ai','bg','bh','bi','cg','ch','ci'};
          
        System.assertEquals(expectedResult,  result);
    }
    @isTest static void negativeScenarioMethod(){
        String digits = '';
        
        Test.startTest();
        	List<String> result = LetterCombinationsofPhoneNumber.letterCombinations(digits);
        Test.stopTest();
        
        List<String> expectedResult = null;
          
        System.assertEquals(expectedResult,  result);
    }
}