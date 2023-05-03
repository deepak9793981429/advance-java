class A{
      void ShowA(){
            System.out.println("Hello I'm Show-A");
      }
}
class B  extends A{
      void ShowB(){
            System.out.println("Hello I'm Show-B");
      }
}
class MainClass{
       public static void main(String args[]){
            B sr=new B();
            sr.ShowA();
            sr.ShowB();
       }
}