class Demo{
  String show(String name){
    return "Hello"+name;
    // System.out.println("Hello Deepak paswan");
  }
}
class MainClass{
  public static void main(String[] args) {
    String sts;
Demo str=new Demo();
 sts=str.show("Deepak Paswan");
 System.out.println(sts);
  }
}