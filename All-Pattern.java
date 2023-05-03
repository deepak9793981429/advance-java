class Demo{
      public static void main(String args[]){
            // int n=4;
            // int m=5;
            // for(int i=1;i<=n;i++){
            //       for(int j=1;j<=m;j++){
            //             if(i == 1 || j == 1 || i == n || j == m){
            //                   System.out.print("*");
            //             }
            //             else{
            //                   System.out.print(" ");
            //             }
           //       }
            // System.out.println();
            // }
//             int r=4;
//             for(int i=1;i<=r;i++){
//                   for(int j=1;j<=r-i;j++){
//                   System.out.print(" ");
//                   }
//                   for(int j=1;j<=i;j++){
//                   System.out.print("*");
//             }
// System.out.println();
//          }


      //  int n=5;
      //  for (int i=1; i<=n; i++){
      //       for(int j=1;j<=i;j++){
      //             System.out.print("*");
      //       }
      //       int speace=2*(n-i);
      //       for(int j=1;j<=speace;j++){
      //             System.out.print(" ");
      //      }
      //      for(int j=1;j<=i;j++){
      //       System.out.print("*");
      //      }
      //      System.out.println();
      //  }
      //  for(int i=4;i>=1;i--){
      //       for(int j=1;j<=i;j++){
      //         System.out.print("*");
      //       }
      //       int speace=2*(n-i);
      //       for(int j=1;j<=speace;j++){
      //             System.out.print(" ");
      //       }
      //       for( int j=1;j<=i;j++){
      //             System.out.print("*");
      //       }
            
      //       System.out.println();
      //  }
            //  int n=5;
            // //  outer loop
            //  for(int i=1;i<=n;i++){
            //       //  inear loop
            //       for(int j=1;j<=i;j++){
            //             int sum=i+j;
            //             if(sum % 2 == 0){
            //                   System.out.print("1");
            //             }
            //             else{
            //                   System.out.print("0");
            //             }
            //       }
            //       System.out.println();
            //  }
            int n=5;
            for(int i=1;i<=n;i++){
                  for(int j=1;j<=i;j++){
                        System.out.print("* ");
                  }
                  int speace=2*(n-i);
                  for(int j=1;j<=speace;j++){
                        System.out.print(" ");
                  }
                  for(int j=1;j<=i;j++){
                        System.out.print("* ");
                  }
                  System.out.println();
            }
            for(int i=4;i>=1;i--){
                  for(int j=1;j<=i;j++){
                        System.out.print("* ");
                  }

                  int speace=2*(n-i);
                  for(int j=1;j<=speace;j++){
                  System.out.print(" ");
                   
                  }
                  for(int j=1;j<=i;j++){
                        System.out.print("* ");
                  }
                  System.out.println();
            }

      }
}