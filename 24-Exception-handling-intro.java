import javafx.scene.control.TableColumn.SortType;
import javafx.scene.paint.Stop;

class MainClass{
      public static void main(String[] args) {
            int c=0;
            int num[]={2,5,0};
            try {
                  int b=num[4];
                  try {
                        c=10/b;
                  } catch (ArithmeticException e) {
                       System.out.println(e.getMessage());      
                  }
            } catch (ArrayIndexOutOfBoundsException e) {
                  System.out.println("Invaild Array index number "+e.getMessage());
            }
           System.out.println(c);
            
      }
} 