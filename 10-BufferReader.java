import java.io.BufferedReader;
import java.io.InputStreamReader;

class MainClass{
  public static void main(String[] args) throws Exception{
  
    InputStreamReader str=new InputStreamReader(System.in) ;
    BufferedReader sir=new BufferedReader(str);
    System.out.print("Please Enter Your name :");
   String name = sir.readLine();
   System.out.println(name);
  }
}