public class ProjE14{
	public static void main(String[] args){
		int currMaxIndex = 0;
		int currMaxLength = 0;
		for(int i = 1000000; i>1; i--){ //113400
			int temp = iterative(i);
			if(temp>currMaxLength){
				currMaxLength = temp;
				currMaxIndex = i;
			}
		}
		System.out.println("Answer: "+currMaxIndex);
	}
	public static int iterative(int i){
		int length = 0;
		long var = i;
		while(var!=1){
			var = (var%2==0) ? var/2 : 3*var+1;
			length++;
		}
		return length;
	}
}