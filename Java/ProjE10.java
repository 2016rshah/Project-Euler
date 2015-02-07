public class ProjE10{
	public static void main(String[] args){
		int currNum = 2;
		long res = 0; 
		while(currNum<2000000){
			if(isPrime(currNum))
				res+=currNum;
			currNum++;
		}
		System.out.println("Answer: "+res); //this is basically the same as 7
	}
	public static boolean isPrime(long num){
		for(int i = 2; i<(int)(Math.sqrt(num))+1; i++) //Sqrt speeds it way up. Also, round up so add one
			if(num%i == 0)
				return false;
		return true;
	}
} 
