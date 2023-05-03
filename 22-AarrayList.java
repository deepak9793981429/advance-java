import java.util.ArrayList;
import java.util.Scanner;

class MainClass{
 public static void main(String[] args) {
      ArrayList<Integer> arr=new ArrayList<>();
      arr.add(2) ;
      arr.add(3);
      arr.add(4);
      System.out.println(arr);
      arr.add(5);
      System.out.println(arr);
      arr.add(3,5);

      String array[][] =new String[2][4];
      Scanner input=new Scanner(System.in);
      System.out.println("Enter you mask");
      for(int r=-1;r<=3;r++){
         for(int c=-1;c<=r;c++){
               array[r][c]=input.nextLine();
               System.out.println(array[r][c]);
          }
     }

     

 }
}