# Python
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None
class Temp(int):
	pass

class Solution:
	def getIntersectionNode(self, headA: ListNode, headB: ListNode) -> ListNode:
		# Temporary pointer
		t1, t2 = headA, headB

		# Iterate nutill not equal
		while t1 != t2:
			# If any pointer reaches end,
				# The start iterating next list from same pointer
			t1 = t1.next if t1 else headB
			t2 = t2.next if t2 else headA
		return t1
```
# Java
```java
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) {
 *         val = x;
 *         next = null;
 *     }
 * }
 */
public class Solution {
	public ListNode getIntersectionNode(ListNode headA, ListNode headB) {
		// Temporary pointer
		ListNode t1 = headA;
		ListNode t2 = headB;

		// Iterate nutill not equal
		while ( t1 != t2 ) {
			// If any pointer reaches end,
				// The start iterating next list from same pointer
			t1 = t1==null ? headB : t1.next;
			t2 = t2==null ? headA : t2.next;
		}

		return t1;
	}
}
```
