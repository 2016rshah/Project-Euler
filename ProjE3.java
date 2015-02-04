public class ProjE3{
	public static void main(String[] args){
		long testCase = 13195L; //Initial test case
		long product = 600851475143L; //Actual problem
		System.out.println("Answer: "+bruteForce(product, 2)); //6875
	}
	public static long bruteForce(long num, int startCheck){
		for(int i = startCheck; i<(int)(Math.sqrt(num)); i++){
			if(num%i == 0){
				num = num/i;
				System.out.println(num);
				return bruteForce(num, i);
			}
		}
		return num;
	}
}