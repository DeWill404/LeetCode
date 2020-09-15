# Python
```python
class Solution:
    def getSum(self, n):
        s = 0
        while n:
            s += (n%10)**2
            n //= 10
        return s
    
    
    def isHappy(self, n: int) -> bool:
        if n==1:    return True
        
        slow = fast = n
        while True:
            slow = self.getSum(slow)
            fast = self.getSum(self.getSum(fast))
            if fast==1:
                return True
            if fast==slow:
                return False
        
```
# Java
```java
class Solution {
	public int sum(int n) {
		int s = 0;
		while (n != 0) {
			s += (n%10) * (n%10);
			n /= 10;
		}
		return s;
	}
	
	
	public boolean isHappy(int n) {
		if (n==1)    return true;
		
		int slow=n, fast=n;
		while (true) {
			slow = sum(slow);
			fast = sum(sum(fast));
			if ( fast == 1 ) return true;
			if ( fast==slow || fast==4 ) return false;
		}
		
	}
}
```
