import java.util.Scanner;

class CreatingLoginDetials {
      String uname;
      String pass;
      void showLogin(){
            Scanner sr=new Scanner(System.in);
            System.out.println("Please Entere Your Username & password ");
            uname=sr.nextLine();
            pass=sr.nextLine();
      }

      void VeryfiDetials(){
            if(uname.equals("deepak") && "1234".equals(pass)){
                  System.out.println("Welcome to GKP");
            }else{
                  try {
                        throw new Exception("Invaild Your Password");
                  } catch (Exception e) {   
                  }
            }
      }
}
class MainClass{
      public static void main(String[] args) {
            CreatingLoginDetials gmail=new CreatingLoginDetials();
            gmail.showLogin();
            gmail.VeryfiDetials();
      }
}
