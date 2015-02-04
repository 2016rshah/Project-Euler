public class ProjE6{
	public static void main(String[] args){
		System.out.println("Answer: " + (squareOfSum(100)-sumOfSquares(100)));
	}
	public static int sumOfSquares(int limit){
		int res = 0;
		for(int i = 0; i<=limit; i++){
			res+=i*i;
		}
		return res;
	}
	public static int squareOfSum(int limit){
		int sum = 0;
		for(int i = 0; i<=limit; i++){
			sum+=i;
		}
		return sum*sum;
	}
}