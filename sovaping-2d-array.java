import java.util.Scanner;

class MainClass{
      public static void main(String[] args) {
            // int[][] arr={{23,45,12},{12,45,55},{10,20,14}};
            // for(int i=0;i<arr.length;i++){
            //       for(int j=0;j<arr[0].length;j++){
            //             if(j<i){
            //                   int temp =arr[i][j];
            //                   arr[i][j]=arr[j][i];
            //                   arr[j][i] =temp;
            //             }
            //             System.out.print(arr[i][j]);
            //       }
            //       System.out.println();
            // }
            int a[][] =new int [2][2];
            int b[][] =new int [2][2];
            int c[][] =new int [2][2];
            Scanner input=new Scanner(System.in);
            System.out.print("Enter First Matrix ");
            for(int i=0;i<a.length;i++){
                  for(int j=0;j<1;j++){
                      a[i][j]=input.nextInt();
                  }
            }
            System.out.print("Enter Two Matrix ");
            for(int i=0;i<b.length;i++){
                  for(int j=0;j<1;j++){
                        b[i][j]=input.nextInt();
                  }
            }
            for(int i=0;i<a.length;i++){
                  for(int j=0;j<i;j++){
                        System.out.print(a[i][j]);
                  }
                  System.out.println();
            }
            for(int i=0;i<b.length;i++){
                  for(int j=0;j<i;j++){
                        System.out.print(b[i][j]);
                  }
                  System.out.println();
            }
            for(int i=0;i<c.length;i++){
                  for(int j=0;j<i;j++){
                        c[i][j]=a[i][j]+b[i][j];
                        System.out.print(c[i][j]);
                  }
            }
            System.out.println();


      }
}
