
class One{
      void showOne(){
            System.out.println("Show One");
      }
}
class Two extends One{
   void showTwo(){
      System.out.println("Show Two");
   }
}
class Three extends Two{
      void showThree(){
            System.out.println("Show Three");
      }
}
class MainClass{
      public static void main(String args[]){

           Three src=new Three();
              src.showOne();
              src.showTwo();
              src.showThree();
      }
}