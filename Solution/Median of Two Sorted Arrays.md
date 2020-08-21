# Python
```python
class Solution:
	def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
		# Move nums1(small list) and nums2(large list)
		if len(nums2) < len(nums1):
			nums1, nums2 = nums2, nums1

		# Set pointer variable
		n = len(nums1)
		m = len(nums2)
		global median, i, j
		min_index = 0
		max_index = n

		# Find median
		while (min_index <= max_index) :

			# Move i,j partiton
			i = int((min_index + max_index) / 2)
			j = int(((n + m + 1) / 2) - i)
			## if right, if left partition is greater then right
			if (i < n and j > 0 and nums2[j - 1] > nums1[i]) :
				min_index = i + 1
			## if left, if right partition is greater then left
			elif (i > 0 and j < m and nums2[j] < nums1[i - 1]) :
				max_index = i - 1
			else :
				## if nums1 is empty
				if (i == 0) :
					median = nums2[j - 1]
				## if nums2 is empty
				elif (j == 0) :
					median = nums1[i - 1]
				## if Get lower part of median
				else :
					median = max(nums1[i - 1], nums2[j - 1])
				break

		# If total length is odd
		if ((n + m) % 2 == 1) :
			return median
		# If median is not in small array
		if (i == n) :
			return ((median + nums2[j]) / 2.0)
		# If median is not in large array
		if (j == m) :
			return ((median + nums1[i]) / 2.0)
		# If median is middle of both array
		return ((median + min(nums1[i], nums2[j])) / 2.0)
```
# Java
```java
class Solution {
	// Method to find minimum
	private int min(int a, int b) { return (a <= b) ? a : b; }

	// Method to find maximun
	private int max(int a, int b) { return (a >= b) ? a : b; }
	
	// Method to find MEMDIUM
	private double median(int[] a, int[] b) {
		int left=0, right=a.length;	// Set window
		int i=0, j=0;	// Set pointer
		double M=0;	// Set Median

		// Find median
		while (left <= right) {

			// Move partition
			i = (left+right)/2;
			j = (a.length+b.length+1)/2-i;

			// if right, if left partition is greater then right
			if (i<a.length && j>0 && a[i]<b[j-1]) { left = i+1; }
			// if left, if right partition is greater then left
			else if (i>0 && j<b.length && a[i-1]>b[j]) { right = i-1;}
			else {
				// if nums1 is empty
				if (i==0) { M = b[j-1]; }
				// if nums2 is empty
				else if (j==0) { M = a[i-1]; }
				// if Get lower part of median
				else { M = max(a[i-1],b[j-1]); }
				break;
			}
		}

		// If total length is odd
		if ( (a.length+b.length)%2==1 ) { return M; }
		// If median is not in small array
		else if ( i == a.length ) { return (M+b[j])/2.0; }
		// If median is not in large array
		else if ( j == b.length ) { return (M+a[i])/2.0; }
		// If median is middle of both array
		else { return (M+min(a[i],b[j]))/2.0; }
	}
	
	public double findMedianSortedArrays(int[] nums1, int[] nums2) {
		// Move nums1(small list) and nums2(large list)
		return nums1.length<nums2.length ? median(nums1,nums2) : median(nums2,nums1);
	}
}
```
