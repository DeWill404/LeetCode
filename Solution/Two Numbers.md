# Python
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def addTwoNumbers(self, l1: ListNode, l2: ListNode) -> ListNode:
        C = 0   # Carry Variable
        o = l2  # Return variable
        a = None    # Point to last node of list

        # Iterate to min length of both list
        while l1 and l2:
            l2.val = l1.val + l2.val + C
            C = l2.val//10
            l2.val = l2.val%10
            a = l2
            l1 = l1.next
            l2 = l2.next

        # If l2 is empty then copy l1 into l2
        if l1 and not l2:
            a.next = l1
            l2 = a.next

        # Iterate though remaining part of list
        while l2:
            l2.val += C
            C = l2.val//10
            l2.val = l2.val%10
            a = l2
            l2 = l2.next

        # Append carry in list
        if C:
            a.next = ListNode(C)

        return o
```
# Java
```java
class Solution {
    public ListNode addTwoNumbers(ListNode l1, ListNode l2) {
        int carry = 0;	// Carry Variable
        ListNode out = l2;	// Return Variable

		// Iterate to min length of both list
        while (l1!=null || l2!=null) {
			// Add numbers
			if (l1==null) {
                l2.val += carry;
            } else {
				l2.val = l1.val+l2.val+carry;
			}

			// Set carry
            carry = l2.val/10;
            l2.val %= 10;

			// If l2 is empty and l1 is not
            if (l1!=null && l1.next!=null && l2.next==null) {
                l2.next = l1.next;
                l1.next = null;
			}
			// If both list are empty
			else if ((l1==null || l1.next==null) && l2.next==null) {
                if ( carry != 0 ) {
					l2.next = new ListNode(carry, null);
					carry = 0;
                }
			}

			// Increament nodes
			if (l1 != null) { l1 = l1.next; }
            l2 = l2.next;
        }

        return out;
    }
}
```