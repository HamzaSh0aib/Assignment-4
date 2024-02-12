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

  int first = 0;
  int second = 1;
  int next;
  for (var i = 0; i < count; i++) {
    if (i <= 1) {
      next = i;
    } else {
      next = first + second;
      first = second;
      second = next;
    }
    stdout.write('$next ');
  }

  //Question no 3 (Find prime number)

  int numberr = 3;
  List<int> factor = [];

  for (var i = 1; i <= numberr; i++) {
    if (i != numberr && numberr % i == 0) {
      factor.add(i);
    }
  }
  if (factor.length > 2) {
    print('\n$numberr is not a prime number');
  } else {
    print('\n$numberr is a prime number');
  }

//Question no 4 (find factorial)
  print('Enter Nmber');
  int num1 = int.parse(stdin.readLineSync()!);
  int factorials(int number) {
    int fact = 1;
    for (var i = 2; i <= number; i++) {
      fact = fact * i;
    }
    return fact;
  }

  print('factorail of $count = ${factorials(num1)}');

  //Question 5(find the sum of all digit)
  print('Enter Number');
  int input = int.parse(stdin.readLineSync()!);

  int digitsum = 0; //1,2,3,4,5,6,
  while (input > 0) {
    int digit = input % 10;
    digitsum = digitsum + digit;
    input ~/= 10;
  }
  print('Sum of All Digits = $digitsum');

  // Question no 6 (Find The highest numbers)
  List<int> listofnumbers = [1,2,3,55,22,66,33,88,99];
  int firstdigit = listofnumbers[0];
  for (var i = 0; i < listofnumbers.length; i++) {
    if(listofnumbers[i]>firstdigit){
      firstdigit= listofnumbers[i];
    }
  }
  print('Highest Value in the list = $firstdigit');
}
