# Python
```python
class Solution:
	# Reverse array inplace
	def reverse(self, l, s, e):
		while s < e:
			l[s], l[e] = l[e], l[s]
			s += 1
			e -= 1

	def rotate(self, nums: List[int], k: int) -> None:
		"""
		Do not return anything, modify nums in-place instead.
		"""
		l = len(nums)
		k %= l		# Make k less then length

		# Reverse to bring back to front
		self.reverse(nums, 0, l-1)
		
		# Reverse sub array so that, it looks shifted
		self.reverse(nums, k, l-1)
		self.reverse(nums, 0, k-1)
```
# Java
```java
class Solution {
	// Reverse array inplace
	private void reverse(int[] n, int s, int e) {
		while (s < e) {
			n[s] = n[s]+n[e];
			n[e] = n[s]-n[e];
			n[s] = n[s]-n[e];
			s++;
			e--;
		}
	}
	
	public void rotate(int[] nums, int k) {

		k %= nums.length;	// Make k less then length
	
		// Reverse to bring back to front
		reverse(nums, 0, nums.length-1);
		
		// Reverse sub array so that, it looks shifted
		reverse(nums, k, nums.length-1);
		reverse(nums, 0, k-1);
	}
}
```
