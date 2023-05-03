import java.util.Scanner;
class PasswordException extends Exception{
      PasswordException(String armsg){
            super(armsg);
      }
}
class Veryfie{
      String uname,upass;
   void  showLogin(){
         Scanner input=new Scanner(System.in);
         System.out.println("Please Enter Your Username & id !!?");
         uname = input.nextLine();
         upass = input.nextLine();
         
         
      }     void LoginDetials(){
             if("deepak".equalsIgnoreCase(uname) && "1233".equalsIgnoreCase(upass)){
                System.out.println("Success Your Login");
             }else{
                  try {
                        
                        throw new PasswordException("Wrong Your Creadate detials !! Please Try again!!?");
                  } catch (PasswordException e) {                      
                        System.out.println(e.getMessage());
                  }
             }
      }
}
class MainClass{
      public static void main(String[] args) {
            Veryfie login=new Veryfie();
            login.showLogin();
            login.LoginDetials();
      }
}