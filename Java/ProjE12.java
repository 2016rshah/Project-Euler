public class ProjE12{
	public static void main(String[] args){
		long num = 1L; 
		long triangle = 1L;
		long factors = 1L;
		while(factors<500){
			num++;
			triangle = triangulate(num);
			factors = numFactors(triangle);
		}
		System.out.println("Index: "+num);
		System.out.println("Triangle number: "+triangle);
		System.out.println("Factors: "+factors);
		System.out.println();
		System.out.println("Answer: "+triangle);
	}
	public static long triangulate(long num){
		int res = 0;
		for(int i = 1; i<=num; i++)
			res+=i;
		return res;
	}
	public static long numFactors(long triangle){
		int numFactors = 0;
		for(int i = 1; i<(int)(Math.sqrt(triangle)+1); i++)
			if(triangle%i == 0)
				numFactors+=2;
		return numFactors;
	}
}