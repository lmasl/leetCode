//Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.
//Example 1:
//Input: n = 3
//Output: ["((()))","(()())","(())()","()(())","()()()"]

public with sharing class GenerateParenthesesApexClass {   
        public static List<String> generateParenthesis(Integer n) {
            // Resultant list
            List<String> result = new List<String>();
            /// Recursively generate parentheses
            generateParenthesis(result, '', 0, 0, n);
            return result;
        }

        private static void generateParenthesis(List<String> result, String s, Integer open, Integer close, Integer n) {
            // Base case
            if (open == n && close == n) {
                result.add(s);
                return;
            }
            // If the number of open parentheses is less than the given n
            if (open < n) {
                generateParenthesis(result, s + '(', open + 1, close, n);
            }
            // If we need more close parentheses to balance
            if (close < open) {
                generateParenthesis(result, s + ')', open, close + 1, n);
            }
        }
}