import 'dart:io';

void main() {
  // Question no 1
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (final i in numbers) {
    if (i % 2 == 0) {
      print('Even numbers $i');
    }
  }
 // Question no 2
 print('Enter The Number ');
 int count = int.parse(stdin.readLineSync()!);

 int first =0;
 int second =1;
 int next;
 for (var i = 0; i < count; i++) {
   if(i<=1){
    next =i;
   }
   else{
    next = first+second;
    first =second;
    second = next;
   }
   stdout.write('$next');
 }
}
