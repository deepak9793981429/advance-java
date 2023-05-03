// Type of Method
  // <-static-method
  // <-Instance-method

class methodType{
   static String name="deepak";
  // static void ShowStatic(){
    // System.out.println("Hello Static Method");//static-method
  // }
  // void ShowInstance(){
  //   System.out.println("Hello Instance Method");//instance-method
  // }
}
class MainClass{
  public static void main(String[] args) {
    // methodType.ShowStatic();
    //  methodType str=new methodType();
    // str.ShowInstance();
   methodType.name="deepu";
    System.out.println(methodType.name);
  }

}