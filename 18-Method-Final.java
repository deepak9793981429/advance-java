// Final is con't overloding method 
class Demo{
  Final void ShowDemo(){
            System.out.println("Hello ShowDemo");
      }
}
class Hi extends Demo{
      void ShowDemo(){
            System.out.println("Hello Show Hi");
      }
}
class MainClass{
      public static void main(String args[]){
      Hi h=new Hi();
      h.ShowDemo();
      }
}