class MainClass{
      public static void main(String[] args) {
            // Created to wrapper

            // Integer a=new Integer(20);
            // byte b=a.byteValue();
            // System.out.println(b);
            //  long l=a.longValue();
            // System.out.println(l);
            // short s=a.shortValue();
            // System.out.println(s);
            // float f=a.floatValue();
            // System.out.println(f);

            // wrapper to String
            Integer c=new Integer(10);
            System.out.println(c.toString());

            int m=10;
            Integer x= Integer.valueOf (m);
            System.out.println(x);

            // String to Primitive
            String s=new String("10");
            int f=Integer.parseInt(s);
            System.out.println(f);

      }
}