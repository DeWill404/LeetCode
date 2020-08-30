# Python
```python
class Solution:
	def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
		"""
		Do not return anything, modify nums1 in-place instead.
		"""
		max = len(nums1)-1	# Pointer to full nums1 list
		m -= 1	# Pointer to empty nums1 list
		n -= 1	# Pointer to empty nums2 list

		# Iterate aloong as nums2 is not empty & nums1 is not full
		while max>=0 and n>=0:
			# Check if nums1 > nums2 only if m is not empty
			if m>=0 and nums1[m] > nums2[n]:
				nums1[max] = nums1[m]
				m -= 1
			# Else copy nums2 to nums1
			else:
				nums1[max] = nums2[n]
				n -= 1
			max -= 1
```
# Java
```java
class Solution {
	public void merge(int[] nums1, int m, int[] nums2, int n) {
		int max = nums1.length-1;	// Pointer to full nums1 list
		m--;	// Pointer to empty nums1 list
		n--;	// Pointer to empty nums2 list

		// Iterate aloong as nums2 is not empty & nums1 is not full
		while (max>=0 && n>=0) {
			// Check if nums1 > nums2 only if m is not empty
			if (m>=0 && nums1[m]>nums2[n]) {
				nums1[max] = nums1[m--];
			}
			// Else copy nums2 to nums1
			else {
				nums1[max] = nums2[n--];
			}
			max--;
		}
	}
}
```
