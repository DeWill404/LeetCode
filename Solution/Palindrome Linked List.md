# Python
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
	def isPalindrome(self, head: ListNode) -> bool:
		if head==None or head.next==None:   return True
		
		length = 0
		temp = head
		while temp:
			temp = temp.next
			length += 1
		
		temp = ListNode(head.val, None)
		for i in range(length//2-1):
			head = head.next
			temp = ListNode(head.val, temp)

		head = head.next.next if length%2 else head.next
		
		while temp and head:
			if temp.val != head.val:
				return False
			temp = temp.next
			head = head.next
		else:
			return temp==None and head==None
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
	public boolean isPalindrome(ListNode head) {
		if (head==null || head.next==null) { return true; }
		
		int length = 0;
		ListNode temp = head;
		while (temp != null) {
			temp = temp.next;
			length++;
		}

		temp = new ListNode(head.val, null);
		for (int i=0; i<length/2-1; i++) {
			head = head.next;
			temp = new ListNode(head.val, temp);
		}

		head = length%2==1 ? head.next.next : head.next;

		while (temp!=null && head!=null) {
			if (temp.val != head.val) { return false; }
			temp = temp.next;
			head = head.next;
		}
		return temp==null && head==null;
	}
}
```
