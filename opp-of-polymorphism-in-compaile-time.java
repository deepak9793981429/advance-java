class School{
      String name;
      void Student(String name){
            this.name=name;
            System.out.println("Hello "+name);
      }
      void Student(String name,int age){
            System.out.println("Hello "+name+" I am "+age+" years old");
      }
      void Student (int age){
            System.out.println("Hello "+name+" I am "+age+" years old");
      }
}
class MainClass{
      public static void main(String[] args) {
            School school=new School();
            school.name="deepak kumar";
            school.Student(20);
      }
}
      

