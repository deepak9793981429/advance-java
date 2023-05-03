import java.io.IOException;

class MainClass{
   public static void main(String[] args) throws IOException{
      
      String str=new String("Hello java");
      // System.out.println(str.concat(" world"));
//       System.out.println(str.charAt(3));
//       System.out.println(str.equals("hello java"));
//       System.out.println(str.equalsIgnoreCase("hello java"));
//       System.out.println(str.contains("Hello java"));
//       System.out.println(str.compareTo("hello java"));
//       System.out.println(str.compareTo("Hello java"));
//       System.out.println(str.codePointAt(3));
//       System.out.println(str.codePointBefore(2));
//       System.out.println(str.endsWith("Hello"));
//       System.out.println(str.endsWith("java"));
//       System.out.println(str.startsWith("Hello"));
//       System.out.println(str.startsWith("java"));
//       System.out.println(str.hashCode());
//       System.out.println(str.substring(0,5));
//      System.out.println(str.intern());
     
//      System.out.println(str.replace("java", "World"));
//      System.out.println(str.toCharArray());
      //   System.out.println(str.toUpperCase());
      //   System.out.println(str.toLowerCase());
      //   System.out.println(str.toString());
        
        str.notifyAll();
        System.out.println(str);
   }
}