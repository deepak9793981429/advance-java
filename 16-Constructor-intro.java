class Demo{
      Demo(String name){
      System.out.println("Welcome Mr."+name);
      }
 void showDemo(){
      System.out.println("Acadmic Study Center ");
 }
}
class MainClass{
    public static void main(String args[]){
      Demo str=new Demo("Deepak Paswan");
      str.showDemo();
    }
}