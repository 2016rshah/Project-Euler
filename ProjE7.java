import java.util.ArrayList;
public class ProjE7{
	public static void main(String[] args){
		int numPrimesFound = 1;
		int currPrime = 2;
		int currNum = 2;
		while(numPrimesFound<=10001){
			if(isPrime(currNum)){
				currPrime = currNum;
				numPrimesFound++;
			}
			currNum++;
		}
		System.out.println("Answer: "+currPrime);
	}
	public static boolean isPrime(long num){
		for(int i = 2; i<(int)(Math.sqrt(num))+1; i++){ //Sqrt speeds it way up. Also, round up so add one
			if(num%i == 0){
				return false;
			}
		}
		return true;
	}
}