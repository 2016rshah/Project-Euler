public class ProjE5{
	public static void main(String[] args){
		int x = 1;
		while(!isDivisible(x)){
			x++;
		}
		System.out.println("Answer is: "+x);
	}
	public static boolean isDivisible(int num){
		for(int i = 1; i<21; i++){
			if(num%i != 0){
				return false;
			}
		}
		return true;
	}
}