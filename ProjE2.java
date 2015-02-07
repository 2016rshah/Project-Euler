public class ProjE2{
	public static void main(String[] args){
		int a = 1;
		int b = 2;
		int total = b; //make sure you catch initial value of b=2
		while(b<4000000){
			int newB = a+b;
			a = b;
			b = newB;
			if(b%2==0){
				total+=b;
			}
		}
		System.out.println("Answer: " + total);
	}
}