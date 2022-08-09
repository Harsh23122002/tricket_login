void main() {

  List<int> array=[1,2,2,3,2,3,4,1,3,8,5,3,9,10];
  List<int> arr2=[];

//   O(n^2)

//   for(int i=0;i<array.length;i++){
//     int flag=0;
//     for(int j=0;j<arr2.length;j++){

//       if(array[i]==arr2[j]){
//         flag++;
//       }
//     }
//     if(flag==0){
//       arr2.insert(arr2.length,array[i]);
//     }
//   }
//   print(arr2);

//==================================================

//   O(nlog(n))

//   print(array.toSet());

//==================================================

//   O(nlog(n))

  array.sort();//   O(nlog(n))

  int a,b;
  int nothing=0;
  for(int i=0;i<array.length-1;i++){
    a=array[i];
    b=array[i+1];

    if(a==b){
      nothing++;
    }
    else{
      arr2.insert(arr2.length,a);
    }
  }
  arr2.insert(arr2.length,array[array.length-1]);
  print(arr2);
}