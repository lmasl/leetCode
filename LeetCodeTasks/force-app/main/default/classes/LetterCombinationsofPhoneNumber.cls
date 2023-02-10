public class LetterCombinationsofPhoneNumber {
     
    public static List<String> letterCombinations(String digits) {
      Map<String, String> letters = new Map<String, String>();
      letters.put('2','abc');
      letters.put('3', 'def');
      letters.put('4', 'ghi');
      letters.put('5', 'jkl');
      letters.put('6', 'mno');
      letters.put('7', 'pqrs');
      letters.put('8', 'tuv');
      letters.put('9', 'wxyz');
        
      List<String> result = new List<String>();
      
      if (digits.length() == 0) {
        return null;
      }
        
      List<String> keysArr = digits.split('');
        
      List<List<String>> charSets = new List<List<String>>();
        
      for (String key: keysArr) {
          charSets.add(letters.get(key).split(''));
      }
      
      backtrack('', charSets, result);
        
      return result;
    }
   
    private static void backtrack(String prefix, List<List<String>> charSets, List<String> result) {
      if (charSets.size() == 1) {
         for (String character: charSets[0]) {
             result.add(prefix + character);
         }
          
         return;
      } else {
          List<List<String>> charSetsClone = charSets.clone();
          charSetsClone.remove(0);
          
          for (String character: charSets[0]) {
             backtrack(prefix + character, charSetsClone, result);
          }
      }      
  }
}