class Parent{
      void ShowParent(){
            System.out.println("Hello Parent");
      }
}
class Child_One extends Parent{
      void ShowChildOne(){
            System.out.println("Hello Child_One");
      }
}
class Child_Two extends Parent{
      void ShowChihldTwo(){
            System.out.println("Hello Child_Two");
      }
}
class MainClass{
      public static void main(String args[]){
            Child_One child=new Child_One();
            child.ShowParent();
            child.ShowChildOne();
            Child_Two chld=new Child_Two();
            chld.ShowParent();
            chld.ShowChihldTwo();
      }
}