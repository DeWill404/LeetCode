# Python
```python
class Solution:
	def isValid(self, s: str) -> bool:
		# Check if open & closing brackets are equal
		if s.count("(")!=s.count(")") or s.count("{")!=s.count("}") or s.count("[")!=s.count("]"):
			return False

		stack = []	# Stack

		# Iterate through whole string
		for i in range(len(s)):
			# If closing bracket found
			if s[i] in "}])":
				# If stack is empty 
				if stack==[] or stack.pop()!={")":"(","}":"{","]":"["}[s[i]]:
					return False
			# If opening bracket found
			else:
				stack.append(s[i])
		return stack == []
		
```
# Java
```java
class Solution {
	// Method to Count occurences
	private int count(String s, char C) {
		int c = 0;
		for (int i=0; i<s.length(); i++)
			if ( s.charAt(i) == C ) 
				c++;
		return c;
	}

	// Method to find pair of parenthisis
	private char findPair(char c) {
		return c==')' ? '(' : (c=='}' ? '{' : '[');
	}

	public boolean isValid(String s) {

		// Check if open & closes are equal
		if ( count(s, '(')!=count(s, ')') || count(s, '[')!=count(s, ']') || count(s, '{')!=count(s, '}') )
			return false;

		char[] stack = new char[s.length()/2];	// Stack variable with max l/2 length, as total parenthesis are in pair
		char[] S = s.toCharArray();	// Convert to char array
		int top = -1;	// Top pointer

		for (int i=0; i<s.length(); i++) {
			// If close parenthesis found
			if ( S[i]==')' || S[i]=='}' || S[i]==']' ) {
				// If stack is empty or pair not found
				if ( top==-1 || stack[top]!=findPair(S[i]) ) { return false; }
				top--;
			}
			// If close parenthesis found
			else { stack[++top] = S[i]; }
		}

		// Check if stack is empty
		return top==-1;

	}
}
```
