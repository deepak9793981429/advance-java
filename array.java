import java.util.Scanner;

public class array {
     public static void main(String[] args) {
       String array[][]=new String[3][3];
       int r,c;
       Scanner stp=new Scanner(System.in);
       System.out.println("Enter 4 mask");
       for( r=0;r<=2;r++){
            for(c=0;c<=2;c++){
                  array[r][c]=stp.next();
                  System.out.print(array[r][c]);
            }
      }
} 
}
