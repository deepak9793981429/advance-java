final class A{
      void ShowA(){
            System.out.println("Hello Show-A");
      }
}
class B extends A{
      void ShowA(){
            System.out.println("Hello Show-B");
      }
}
class MainClass{
      public static void main(String args[]){
            B v=new B();
            v.ShowA();
      }
}