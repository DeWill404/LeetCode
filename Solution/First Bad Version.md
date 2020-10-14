# Python
```python
# The isBadVersion API is already defined for you.
# @param version, an integer
# @return an integer
# def isBadVersion(version):

class Solution:
	def findBad(self, start, end):
		if start < end:
			mid = (start+end)//2
			if isBadVersion(mid):
				if start==mid:
					return mid
				else:
					return self.findBad(start, mid)
			else:
				if mid==start:
					return end
				else:
					return self.findBad(mid, end)
		else:
			return start
		
		
	def firstBadVersion(self, n):
		"""
		:type n: int
		:rtype: int
		"""
		return self.findBad(1, n)
```
# Java
```java
/* The isBadVersion API is defined in the parent class VersionControl.
	  boolean isBadVersion(int version); */

	  public class Solution extends VersionControl {
		private int findbad(int start, int end) {
			if (start < end) {
				int mid = (end-start)/2+start;
				if (isBadVersion(mid)) {
					return (start==mid) ? mid : findbad(start, mid);
				} else {
					return (start==mid) ? end : findbad(mid, end);
				}
			} else {
				return start;
			}
		}

		public int firstBadVersion(int n) {
			return findbad(1, n);
		}
	}
```
