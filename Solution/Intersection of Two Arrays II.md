# Python
```python
class Solution:
	def intersect(self, nums1: List[int], nums2: List[int]) -> List[int]:
		nums1.sort()
		nums2.sort()
		o = []
		
		i,j = 0, 0
		while i<len(nums1) and j<len(nums2):
			if nums1[i] < nums2[j]:
				i += 1
			elif nums1[i] > nums2[j]:
				j += 1
			else:
				o.append(nums1[i])
				i += 1
				j += 1
		
		return o
				
```
# Java
```java
import java.util.ArrayList;
import java.util.Arrays;

class Solution {
	public int[] intersect(int[] nums1, int[] nums2) {
		Arrays.sort(nums1);
		Arrays.sort(nums2);

		int i=0, j=0, k=0;
		while (i<nums1.length && j<nums2.length) {
			if (nums1[i] < nums2[j]) {
				i++;
			} else if (nums1[i] > nums2[j]) {
				j++;
			} else {
				nums1[k++] = nums2[j++];
				i++;
			}
		}

		return Arrays.copyOfRange(nums1, 0, k);

	}
}
```
