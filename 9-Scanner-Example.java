import java.util.Scanner;

class Show {// Creat class
  public static void main(String[] args) { // Creat main method
    String name; // Decalaration vaiable
    Scanner str = new Scanner(System.in); // Creat keyborad from input
    System.out.print("Please Enter Your name ");// Creat user message
    name = str.nextLine();// Object-difined input values
    System.out.println("Your name is :" + name); // print value
  }
}
