# Python
```python
class Solution:
	def addStrings(self, num1: str, num2: str) -> str:
		if len(num2) > len(num1):
			num2, num1 = num1, num2
		
		SUM = ""
		i = -1
		carry = 0
		while len(num1)+i >= 0:
			digit = int(num1[i])+carry
			if len(num2)+i >= 0:
				digit += int(num2[i])
			carry = digit//10
			SUM = str(digit%10)+SUM
			i -= 1
		
		if carry:
			SUM = str(carry)+SUM
		
		return SUM
```
# Java
```java
class Solution {
	public String addStrings(String num1, String num2) {
		if (num2.length() > num1.length()) {
			String temp = num1;
			num1 = num2;
			num2 = temp;
		}
		
		StringBuilder sum = new StringBuilder();
		int i = num1.length()-1;
		int carry = 0;
		int diff = num1.length() - num2.length();
		while (i >= 0) {
			int digit = num1.charAt(i) + carry - '0';
			if (diff <= i){ digit += num2.charAt(i-diff) - '0'; }
			carry = digit/10;
			sum.append(digit%10);
			i--;
		}

		if (carry != 0) { sum.append(carry); }

		return new String(sum.reverse());
	}
}
```
