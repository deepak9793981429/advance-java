public class javat {
      public static void main(String[] args) {
            int a[]={23,43,54,22,454,55,66,7};
            int l=a.length;
            int b[]=new int[l];
            for(int i=0;i<=l-1;i++){
                     b[i]=a[l-1-i];
                     System.out.print(b[i]);
            }
            System.out.println();
       for(int i=0;i<=l-1;i++){
            b[i]=a[i];
            
            System.out.print(a[i]);
       }
      }

}
