# Python
```python
class Solution:
    def climbStairs(self, n: int) -> int:
        return int((1/((5**0.5))
					*
					(
						((1+5**0.5)/2)**(n+1)
						-
						((1-5**0.5)/2)**(n+1))
					)
				)
```
# Java
```java
class Solution {
    public int climbStairs(int n) {
        return (int)(
						(1/Math.pow(5,0.5))
						*
						(Math.pow((1+Math.pow(5,0.5))/2,n+1)
						-
						Math.pow((1-Math.pow(5,0.5))/2,n+1))
					);
    }
}
```
