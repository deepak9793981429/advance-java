class Demo{
     
    String  show(String name){
      return name+"paswam";
    }
  }
  class MainClass{
    public static void main (String args[]){
      Demo str=new Demo();
      String names=str.show("Deepak");
      System.out.println(names);
    }
  }

