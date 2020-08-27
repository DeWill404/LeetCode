# Python
```python
class Solution:
    def convert(self, s: str, n: int) -> str:
		# Corner case, where string remain sames
        if len(s)<=n or n==1: return s

		# Output string
        o = ""

		# Iterate through each row
        for i in range(n):

			# Pointer
            j, c = i, 0
            while j < len(s):
                o += s[j]
				# Going in down direction
                if i==n-1 or (i and c):
                    j += i*2
                    c = 0
				# Going in up direction
                else:
                    j += (n-1-i)*2
                    c = 1
        return o
```
# Java
```java
class Solution {
    public String convert(String s, int n) {
		// Corner case, where string remain sames
		if (s.length()<=n || n==1) { return s; }

		// Output string
		char[] o = new char[s.length()];
		int ptr = 0;
		
		// Iterate through each row
		for (int i=0; i<n; i++) {
			int j=i, c=0;	// Pointer

			while (j<s.length()) {
				o[ptr++] = s.charAt(j);
				// Going in down direction
				if (i==n-1 || (i!=0 && c==1)) {
					j += i*2;
					c = 0;
				}
				// Going in up direction
				else {
					j += (n-1-i)*2;
					c = 1;
				}
			}
		}
		
		return new String(o);
    }
}
```
