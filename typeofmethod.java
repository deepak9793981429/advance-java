import java.beans.MethodDescriptor;

//  class typeMethod{

//       void ShowOne(){
//             System.out.println("Hello From ShowOne");
      
//       }
//       static void ShoeTwo(){
//             System.out.println("Hello From ShowTwo");
//       }
// }

// Signature Method in java
// class Method{
//       String Show(String name){
//             return "id-1 "+name;
//       }
// }
// class MainClass{
//       public static void main(String[] args) {
//             Method spt=new Method();
//             String names=spt.Show("Deepak");
//             System.out.println(names);
//       }        
// }Override Method in java
// 
// class Method{
//       void car(){
//             System.out.println("Hello From car");
      
//       }
// }

// class Methods extends Method{
//       void car(){
//             System.out.println("Holle From bike");
//       }
// }
// class MainClass{
//       public static void main(String[] args) {
//             Methods mhd=new Methods();
//             mhd.car();
//             mhd.car();

//       }
// }
// Overloding Method in java
class Method{
      void Username(){
            System.out.println("Hello  This is a Car");
      }
      void Username(String name){
                        System.out.println("Username "+name);
      }
      void Username(String username, String password){
            System.out.println("Username :"+username);
            System.out.println("Paswword :"+password);
      }
}
class MainClass{
      public static void main(String[] args) {
            Method spt=new Method();
            
            spt.Username("deepak","@deepak1234");
            Method dp=new Method();
            dp.Username("sandeep","@sandeep1234");
            Method dp1=new Method();
            dp1.Username("Mohan","@mohan1234");
      }
}