# Python
```python
class Solution:
	def plusOne(self, digits: List[int]) -> List[int]:
		digits[-1] += 1
		carry = digits[-1]//10
		digits[-1] %= 10
		for i in range(len(digits)-2,-1,-1):
			if carry:
				digits[i] += carry
				carry = digits[i]//10
				digits[i] %= 10
			else:
				return digits
		if carry:
			return [carry]+digits
		return digits
```
# Java
```java
class Solution {
	public int[] plusOne(int[] digits) {
		digits[digits.length-1] += 1;
		int carry = digits[digits.length-1]/10;
		digits[digits.length-1] %= 10;
		for (int i=digits.length-2; i>=0; i--) {
			if ( carry != 0 ) {
				digits[i] += carry;
				carry = digits[i]/10;
				digits[i] %= 10;
			} else {
				return digits;
			}
		}
		if (carry != 0) {
			int[] n = new int[digits.length+1];
			n[0] = carry;
			for (int i=1; i<=digits.length; i++) { n[i] = digits[i-1]; }
			return n;
		}
		return digits;
	}
}
```
