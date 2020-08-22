# Python
```python
class Solution:
	def romanToInt(self, s: str) -> int:
		# dict to convert roman to int
		d = {"I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000}
		_sum = 0	# Sum variable
		i = 0	# Index variable

		# Iterate to length-1 index
		while i < len(s)-1:
			# If current is >= next then add
			if d[s[i]] >= d[s[i+1]]:
				_sum += d[s[i]]
			# If current is < next then subtract
			else:
				_sum -= d[s[i]]
			i += 1
			
		# Add last occurence
		_sum += d[s[-1]]
		return _sum
```
# Java
```java
class Solution {
	// Method to convert roman to int
	private int value(char c) {
		switch(c) {
			case 'I':   return 1;
			case 'V':   return 5;
			case 'X':   return 10;
			case 'L':   return 50;
			case 'C':   return 100;
			case 'D':   return 500;
		}
		return 1000;
	}
	public int romanToInt(String s) {
		char[] c = s.toCharArray();	// Convert to string array
		int sum = 0;	// Sum variable
		
		// Iterate to length-1 index
		for (int i=0; i<c.length-1; i++) {
			// If current is >= next then add
			if (value(c[i]) >= value(c[i+1])) {
				sum += value(c[i]);
			}
			// If current is < next then subtract
			else {
				sum -= value(c[i]);
			}
		}
		
		// Add last occurence
		sum += value(c[c.length-1]);
		return sum;
	}
}
```
