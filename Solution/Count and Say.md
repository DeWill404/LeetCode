# Python
```python
class Solution:
	# Function to arrange count and stirng
	def say(self, s):
		i = len(s)-1
		while i >= 0:
			j = i-1
			# Count
			while j>=0 and s[i]==s[j]:
				j -= 1
			# Say
			s = s[:j+1] + str(i-j) + s[i:]
			i = j
		return s
	
	def countAndSay(self, n: int) -> str:
		if n==1: return "1";
		o = "1"
		for i in range(1,n):
			o = self.say(o)
		return o
```
# Java
```java
class Solution {
	// Method to arrange Count and Say string
	private String say(String s) {
		StringBuilder sb = new StringBuilder();
		
		int i = 0;
		while (i < s.length()) {
			int j = i+1;
			// Count
			while (j<s.length() && s.charAt(i)==s.charAt(j)) {j++;}
			// Say
			sb.append(j-i);
			sb.append(s.charAt(i));
			i = j;
		}

		return String.valueOf(sb);
	}
	public String countAndSay(int n) {
		if (n == 1) { return "1"; }
		String o = "1";
		for (int i=1; i<n; i++) { o = say(o); }
		return o;
	}
}
```
