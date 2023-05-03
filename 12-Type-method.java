class Str{
  // Staatic-Method
  static void Show(){
    System.out.println("Welcome to Gorakhpur");
  }
  // Instance-Method
  void Showstr(){
    System.out.println("Heloo Showstr");
  }
}
class MainClass{
  public static void main(String[] args){
    Str str=new Str();
    str.Showstr();
 }
}