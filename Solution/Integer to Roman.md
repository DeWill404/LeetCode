# Python
```python
class Solution:
	def intToRoman(self, n: int) -> str:
		dic = { 1000:"M", 500:"D", 100:"C", 50:"L", 10:"X", 5:"V", 1:"I" }

		o = ""

		d = 10**(len(str(n))-1)

		for i in str(n):
			t = int(i)*d
			if t in dic:
				o += dic[t]
			elif t+d in dic and t:
				o += dic[d]+dic[t+d]
			else:
				if t > 5*d:
					o += dic[5*d]
					t -= d*5
				o += dic[d]*(t//d)
			d = d//10

		return o
```
# Java
```java
import java.util.HashMap;

class template {
	
	private static int countDigit(int n) {
		int c = 0;
		while (n > 0) {
			c++;
			n /= 10;
		}
		return (int)Math.pow(10, c-1);
	}

	public static String intToRoman(int n) {
		HashMap<Integer, Character> romanMap = new HashMap<>();
		romanMap.put(1000, 'M');
		romanMap.put(500, 'D');
		romanMap.put(100, 'C');
		romanMap.put(50, 'L');
		romanMap.put(10, 'X');
		romanMap.put(5, 'V');
		romanMap.put(1, 'I');

		StringBuffer sb = new StringBuffer();

		for(int d=countDigit(n); d>0; d/=10) {
			if ( n >= d ) {
				int digit = n - n%d;
				if ( romanMap.containsKey(digit) ) {
					sb.append( romanMap.get(digit) );
				} else if ( romanMap.containsKey(digit+d) && digit!=0 ) {
					sb.append( romanMap.get(d) );
					sb.append( romanMap.get(digit+d) );
				} else {
					if ( digit > 5*d ) {
						sb.append( romanMap.get(5*d));
						digit -= 5*d;
						n -= 5*d;
					}
					for (int i=0; i<digit/d; i++) {
						sb.append( romanMap.get(d) );
					}
				}
				n -= digit;
			}
		}

		return new String(sb);
	}

	public static void main(String[] args) {

		System.out.println( intToRoman(60) );

	}

}
```
