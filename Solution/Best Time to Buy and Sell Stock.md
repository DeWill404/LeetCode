# Python
```python
class Solution:
	def maxProfit(self, prices: List[int]) -> int:
		# 
		if prices==[]: return 0

		m=M=prices[0]	# Min-Max Variable
		p = 0	# Profit Variable

		# Loop to get Max profit
		for i in range(1,len(prices)):
			# If lower stock prise found
			if prices[i] < m:
				p = max(p, M-m)	# Store max in profit
				m = M = prices[i]
			# If following larger stock prise found
			elif prices[i] > M:
				M = prices[i]
		# Get the max profit
		p = max(p, M-m)
		return p
```
# Java
```java
class Solution {
	public int maxProfit(int[] prices) {
		// If length is null, the return 0
		if (prices.length == 0) { return 0; }

		int m=prices[0], M=prices[0];	// Min-Max Variable
		int p = 0;	// Profit Variable
		for (int i=1; i<prices.length; i++) {
			// If lower stock prise found
			if ( prices[i] < m ) {
				// Store max in profit
				p = M-m>p ? M-m : p;
				m = M = prices[i];
			}
			// If following larger stock prise found
			else if( prices[i] > M ) {
				M = prices[i];
			}
		}
		// Get the max profit
		p = M-m>p ? M-m : p;
		return p;
	}
}
```
