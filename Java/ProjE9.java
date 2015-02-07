public class ProjE9{
	public static void main(String[] args){
		for(int b = 1; b<1000; b++){
			for(int a = 1; a<b; a++){
				if(Math.sqrt(a*a+b*b)%1 == 0){
					int c = (int)(Math.sqrt(a*a+b*b));
					if(a+b+c == 1000){
						System.out.println("Answer: "+(a*b*c));
					}
				}
			}
		}
	}
} 
