class MainClass{
  public static void main(String[] args) {
    System.out.println(800);//800
    System.out.println(800+200);//1000
    System.out.println(800+"Foo"+200);//800Foo200
    System.out.println(800+200+"Foo");//1000Foo
    System.out.println("Foo"+800+200);//Foo800200
  }

}