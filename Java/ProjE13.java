import java.util.*;
import java.io.*;
import java.math.*;
public class ProjE13{
	public static void main(String[] args){
		System.out.println("THIS DOES NOT WORK I GAVE UP ON JAVA AND WENT WITH PYTHON WHICH SUPPORTS REALLY BIG NUMBERS AUTOMATICALLY!!!!! DO NOT EXPECT THIS CODE TO WORK!");
		ArrayList<ArrayList<Integer>> arrays = setup();
		for(int i = 0; i<arrays.size()-2; i++){
			int sumOfLine = sumArray(arrays.get(i));
// 			System.out.println(sumOfLine + " ");
// 			System.out.print(sumArray(arrays.get(i+1))+ " ");
			int tensPlace = (sumOfLine/10)%10;
			int hundredsPlace = (sumOfLine/100)%100;
			// if(i+1<arrays.size())
				arrays.get(i+1).add(tensPlace);
			// if(i+2<arrays.size())
				arrays.get(i+2).add(hundredsPlace);
			//sumOfLine = (sumOfLine);
		}
		long answer = 0;
		for(int i = 0; i<arrays.size()-40/*does this need to be 11?*/; i++){
			int j = i;//39?
			long temp = (long)(sumArray(arrays.get(i))*Math.pow(10, j-3));
			System.out.println(temp);
			answer+=temp; 
		}
		System.out.println(answer);
		System.out.println("THIS DOES NOT WORK I GAVE UP ON JAVA AND WENT WITH PYTHON WHICH SUPPORTS REALLY BIG NUMBERS AUTOMATICALLY!!!!! DO NOT EXPECT THIS CODE TO WORK!");
	}
	public static int sumArray(ArrayList<Integer> line){
		int sum = 0;
		for(int i = 0; i<line.size(); i++){
			sum+=line.get(i);
		}
		return sum;
	}
	public static ArrayList<ArrayList<Integer>> setup(){
		ArrayList<ArrayList<Integer>> arrays = new ArrayList<ArrayList<Integer>>();
		for(int i = 0; i<50; i++){
			arrays.add(new ArrayList<Integer>());
		}
		try(Scanner sc = new Scanner(new File("ProjE13.txt"));){
			int i = 0; 	
			while(sc.hasNextLine()){
				String line = sc.nextLine();
				for(int j = 0; j<line.length(); j++){
					arrays.get(j).add(Integer.parseInt(line.substring(j, j+1)));
				}
			}
			i++;
		}
		catch (FileNotFoundException e){
			System.out.println("File not found");
			System.exit(0);
		}
		return arrays;
	}
}