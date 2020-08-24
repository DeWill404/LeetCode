# Python
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
	# Function to add node and move ahead
	def add(self, node, val):
		node.next = ListNode(val)
		return node.next


	def mergeTwoLists(self, l1: ListNode, l2: ListNode) -> ListNode:
		# If first list is empty
		if not l1: return l2
		# If second list is empty
		if not l2: return l1

		head = ListNode()	# Head of output list
		l = head	# Temp list to add nodes
		
		# Untill both list are unchecked
		while l1 and l2:
			# If l1 have smaller element
			if l1.val <= l2.val:
				l = self.add(l, l1.val)
				l1 = l1.next
			# If l2 have smaller element
			else:
				l = self.add(l, l2.val)
				l2 = l2.next
		# Untill list 1 is unchecked
		while l1:
			l = self.add(l, l1.val)
			l1 = l1.next
		# Untill list 2 is unchecked
		while l2:
			l = self.add(l, l2.val)
			l2 = l2.next
		
		# Return first node
		return head.next
```
# Java
```java
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
	// Method to add node and move ahead
	private ListNode add(ListNode l, int val) {
		l.next = new ListNode(val);
		return l.next;
	}

	public ListNode mergeTwoLists(ListNode l1, ListNode l2) {
		
		// If first list is empty
		if (l1 == null) { return l2; }
		// If second list is empty
		if (l2 == null) { return l1; }
		
		ListNode head = new ListNode();	// Head of output list
		ListNode temp = head;	// Temp list to add nodes

		// Untill both list are unchecked
		while ( l1!=null && l2!=null ) {
			// If l1 have smaller element
			if ( l1.val <= l2.val ) {
				temp = add(temp, l1.val);
				l1 = l1.next;
			}
			// If l2 have smaller element
			else {
				temp = add(temp, l2.val);
				l2 = l2.next;
			}
		}
		// Untill list 1 is unchecked
		while ( l1 != null ) {
			temp = add(temp, l1.val);
			l1 = l1.next;
		}
		// Untill list 2 is unchecked
		while ( l2 != null ) {
			temp = add(temp, l2.val);
			l2 = l2.next;
		}

		// Return first node
		return head.next;
	}
}
```
