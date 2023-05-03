import java.util.Scanner;
class Demo{
      String name;
      void ShowDemo(){        
            Scanner sr=new Scanner(System.in);
            System.out.print("Please Enter Name :");
            name=sr.nextLine();
            System.out.print("Welcome To ShowDemo-1 Mr. "+name);
      }
      void ShowDemo(String name){
            System.out.println( "Welcome To ShowDemo-2 Mr. "+name);
      }
}
class MainClass{
      public static void main(String args[]){
            Demo str=new Demo();
            str.ShowDemo("Deepak Paswan");
      }
}

