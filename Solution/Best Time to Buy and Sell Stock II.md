# Python
```python
class Solution:
	def maxProfit(self, prices: List[int]) -> int:
		# If list is empty
		if prices==[]: return 0

		# Initialize variable
		m=M=prices[0]
		p = 0

		# Iterate loop
		for i in range(1,len(prices)):
			# Sell stock just before price fall
			if prices[i] < M:
				p += M-m
				m = M = prices[i]
			# find Max price just before price fall
			elif prices[i] >= M:
				M = prices[i]
		# Add final profit
		p += M-m
		return p
		
```
# Java
```java
class Solution {
	public int maxProfit(int[] prices) {
		// If list is empty
		if (prices.length == 0) { return 0; }

		// Initialize variable
		int m = prices[0];
		int M = prices[0];
		int p = 0;

		// Iterate loop
		int i = 1;
		while (i < prices.length) {
			// Sell stock just before price fall
			if ( prices[i] < M ) {
				p += M-m;
				m = M = prices[i];
				i++;
			}
			// Iterate & find Max price just before price fall
			else{
				while (i<prices.length && prices[i]>=prices[i-1]) { i++; }
				M = prices[i-1];
			}
		}
		// Add final profit
		p += M-m;
		return p;
	}
}
```
