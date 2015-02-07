public class ProjE4{
	public static void main(String[] args){
		int max = 101;
		for(int i = 999; i>0; i--)
			for(int j = 999; j>0; j--)
				if(i*j>max && isPalindrome(""+i*j))
					max = i*j;
		System.out.println("Answer: "+max);
	}
	public static boolean isPalindrome(String str){
		for(int i = 0; i<str.length()/2; i++)
			if(str.charAt(i) != str.charAt(str.length()-1-i))
				return false;
		return true;
	}
} 
