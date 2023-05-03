interface myInterface{
    String str="I Don't know";
    void ShowmyInterface();


}
class MyInterface implements myInterface{
      public void ShowmyInterface(){
            System.out.print(str);
      }
}
class MainClassc{
      public static void main(String args[]){
            MyInterface inter=new MyInterface();
            inter.ShowmyInterface();
      }
}