class GrdParent{
      void showGrdParent(){
            System.out.println("Hello GrandParent");
      }
}
class Parent extends GrdParent{
      void ShowParent(){
            System.out.println("Hello Parent");
      }
}
class Child extends Parent{
      void ShowChild(){
            System.out.println("Hello Child");
      }
}
class MainClass{
      public static void main(String args[]){
            Child c=new Child();
            c.ShowGrdParent();
            c.ShowParent();
            c.ShowChild();

      }
}