//This will work, given enough time but it is way over one minute (closer to like an hour). 
//See the python solution for a better approach.
public class ProjE15{
	public static void main(String[] args){
		int mazeSize = 20;
		System.out.println(sumOfPathsTo(mazeSize, mazeSize));
		
	}
	public static long sumOfPathsTo(int i, int j){
		if(i<1 || j<1){
			return 1;
		}
		else{
			return sumOfPathsTo(i-1, j) + sumOfPathsTo(i, j-1);
		}
	}
}

