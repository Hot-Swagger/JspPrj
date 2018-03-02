import java.util.Scanner;

public class Program {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		
		System.out.println("당신의 성별을 입력하시오.");
		System.out.print("남성(1)/여성(2) : ");
		int input = scan.nextInt();
		
		if(input==1) {
			System.out.println("\n당신의 성별은 남성이군요");
		}
		else if(input==2) {
			System.out.println("\n당신의 성별은 여성이군요");
		}
	}

}
