import java.util.Scanner;
class Student{
      String name;
      Student(String n){
         name=n;  
      }
      Student(){
          Scanner sr=new Scanner(System.in);
          System.out.println("Please Enter Your name :"); 
          name=sr.nextLine();
      }   
void Show(){
            System.out.println("Your name is "+name);
      }
}
class MainClass{
      public static void main(String args[]){
            Student str=new Student();
            str.Show();
      
   }
}

