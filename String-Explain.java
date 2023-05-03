class Demo{
      public static void main(String args[]){
            String name="Hello Tony";
            String name1="Hello Tony";
      //      Example (compareTo())
            // // System.out.print(name.length());
            // for(int i=0;i<name.length();i++){
            //       System.out.println(name.charAt(i));
            // }
            // if(name.compareTo(name1) == 0){
            //       System.out.print("string are equals");
            // }
            // else{
            //       System.out.println("String are not equals");
            // }
            // Example (substring())
            //  String  name2=name1.substring(0,name1.length());
            //  System.out.println(name2);
            //  System.out.println(name.substring(5,name.length()));
            // System.out.println("Example (startsWith())");
            // System.out.println(name.startsWith("Hello"));
            // System.out.println(name.startsWith("hello"));
            // Example (endsWith())
            // System.out.println("Example (endsWith())");
            // System.out.println(name.endsWith("Tony"));
            // System.out.println(name.endsWith("toney"));
            
            // Example (repleace)
            // System.out.println(name.replace("Tony","Deepak"));
            System.out.println(name.contains("hello"));
            System.out.println(name.contains("Hello"));
            System.out.println(name.indexOf("l"));
            System.out.println(name.indexOf("o"));
            System.out.println(name.lastIndexOf("n"));
            System.out.println(name.toUpperCase());
            System.out.println(name.toLowerCase());
      }
}