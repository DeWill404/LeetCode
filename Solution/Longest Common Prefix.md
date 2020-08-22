# Python
```python
class Solution:
	def longestCommonPrefix(self, strs: List[str]) -> str:
		# If list is empty
		if strs == []:  return ""
		# If list contain only 1 element
		if len(strs) == 1:  return strs[0]

		# Set prefix
		prefix = strs[0]
		# Iterate from 1 to length
		for i in range(1,len(strs)):
			# Set max index of prefix
			j = len(prefix) if len(strs[i])>=len(prefix) else len(strs[i])
			# Find common prefix
			while j>0 and prefix[:j]!=strs[i][:j]:
				j -= 1
			
			# If no prefix
			if j==0:    return ""
			# Change prefix
			else:   prefix = prefix[:j]
		return prefix
```
# Java
```java
class Solution {
	public String longestCommonPrefix(String[] strs) {
		// If list is empty
		if (strs.length==0) { return ""; }
		// If list contain only 1 element
		if (strs.length==1) { return strs[0]; }

		// Set prefix
		String prefix = strs[0];
		// Iterate from 1 to length
		for (int i=1; i<strs.length; i++) {
			// Set max index of prefix
			int j = strs[i].length()>=prefix.length() ? prefix.length() : strs[i].length();
			// Find common prefix
			while (j>0 && prefix.substring(0,j).compareTo(strs[i].substring(0,j))!=0) { j--; }

			// If no prefix
			if (j==0) {
				return "";
			}
			// Change prefix
			else {
				prefix = prefix.substring(0,j);
			}
		}
		return prefix;
	}
}
```
