import java.util.*;
public class ProjE21{
	public static HashMap<Integer, Integer> map = new HashMap<Integer, Integer>();
	public static void main(String[] args){
		int ans = 0;
		for(int i = 1; i<10000; i++)
			for(int j = 1; j<10000; j++)
				if(i!=j && d(i) == j && d(j) == i)
					ans+=i; //Could also do ans+=j;
		System.out.println(ans);
	}
	public static int d(int n){
		if(map.containsKey(n))
			return map.get(n);
		int sum = 0;
		for(int i=1; i < n; i++)
			if(n%i == 0)
				sum+=i;
		map.put(n, sum);
		return sum;
	}
}