import java.io.BufferedReader;
import java.io.InputStreamReader;


class MainClass{
      public static void main(String[] args)throws Exception {
            InputStreamReader input=new InputStreamReader(System.in);
            BufferedReader stp=new BufferedReader(input);
            System.out.println("Please Enter Your Name : ");
            String name=stp.readLine();
            System.out.println("Hello "+name);           
      }
}