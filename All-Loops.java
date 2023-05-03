import java.util.Scanner;

class mainClass{
      public static void main(String[] args) {
            
            int matrix[][]=new int[10][10];
            int rows, cols, r, c;

  Scanner stp=new Scanner(System.in);
   System.out.println("Please enter the number of rows for the matrix: ");
   rows=stp.nextInt();
   System.out.println("Please enter the number of columns for the matrix: ");
   cols=stp.nextInt();
   System.out.println("Please enter the elements for the Matrix: ");
   for(r = 0; r < rows; r++){
      for(c = 0;c < cols;c++){
         matrix[r][c]=stp.nextInt();
      }
   }
   System.out.println("The Lower Triangular Matrix is: ");
   for(r = 0; r < rows; r++){
      for(c = 0; c < cols; c++){
      if(r >= c){
         System.out.print( matrix[r][c]);
      }
      else{
         System.out.print("0");
         System.out.print("\t");
      }
   }
   }
   System.out.println("\nThe Upper Triangular Matrix is: ");
   for(r = 0; r < rows; r++){
      
      for(c = 0; c < cols; c++){
         if(r > c){
            System.out.print("0");
            System.out.print("\t");
         }
         else{
            System.out.print( matrix[r][c]);

         }
      }
   }

}
}