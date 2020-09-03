# Python
```python
class Solution:
	def singleNumber(self, nums: List[int]) -> int:
		# Temporary variable
		temp = 0

		# Do exor as number will become 0, when same digit found
		# 	For Repeated digits, first no. will change temp value
		# 		Then second value will reset it, giving original value of temp...
		# But no. with count 1 encounter, then reset value will be that no.
		for i in nums: temp = temp^i

		return temp
```
# Java
```java
class Solution {
    public int singleNumber(int[] nums) {
		// Temporary Variable
		int temp = 0;
		
		//  Do exor as number will become 0, when same digit found
		// 	For Repeated digits, first no. will change temp value
		// 		Then second value will reset it, giving original value of temp...
		//  But no. with count 1 encounter, then reset value will be that no.
		for (int i=0; i<nums.length; i++) { temp = temp^nums[i]; }
		
		
        return temp;
    }
}
```
