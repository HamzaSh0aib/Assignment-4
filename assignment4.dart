import 'dart:ffi';
import 'dart:io';

void main() {
  // Question no 1
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumber = [];
  for (final i in numbers) {
    if (i % 2 == 0) {
      evenNumber.add(i);
    }
  }
  print(' Orignal List = $numbers');
  print(' Even Number List = $evenNumber');
  // Question no 2
  print('Enter The Number (For Fibnocci) ');
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
  print('\nEnter Number (For Prime Number)');
  int numberr = int.parse(stdin.readLineSync()!);
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
  print('Enter Nmber (For Factorial)');
  int num1 = int.parse(stdin.readLineSync()!);
  int factorials(int number) {
    int fact = 1;
    for (var i = 2; i <= number; i++) {
      fact = fact * i;
    }
    return fact;
  }

  print('factorail of $num1 = ${factorials(num1)}');

  //Question 5(find the sum of all digit)
  print('Enter Number (For Sum OF Digit)');
  int input = int.parse(stdin.readLineSync()!);

  int digitsum = 0; //1,2,3,4,5,6,
  while (input > 0) {
    int digit = input % 10;
    digitsum = digitsum + digit;
    input ~/= 10;
  }
  print('Sum of All Digits = $digitsum');

  // Question no 6 (Find The highest numbers)
  List<int> listofnumbers = [1, 2, 3, 55, 22, 66, 33, 88, 99];
  print(listofnumbers);
  int firstdigit = listofnumbers[0];
  for (var i = 0; i < listofnumbers.length; i++) {
    if (listofnumbers[i] > firstdigit) {
      firstdigit = listofnumbers[i];
    }
  }
  print('Highest Value from the list = $firstdigit');

  //Question no 7 (Print the Table)
  print('Enter Number (For Table)');
  int table = int.parse(stdin.readLineSync()!);
  for (var i = 1; i <= 10; i++) {
    print('$table x $i = ${table * i}');
  }
//Question no 8 (Find Palindrome)
  print('Enter the String Value for palindrome');
  String palindrome = stdin.readLineSync()!;
  bool ispalindrome = Palindrome(palindrome);

  if (ispalindrome) {
    print('$palindrome is a palindrome');
  } else {
    print('$palindrome is not a palindrome');
  }

//Question no 9 (Find the cube)
  for (var i = 1; i <= 5; i++) {
    print('$i and the cube of $i = ${cube(i)}');
  }
//Question no 10 (Making Pyramid)
  print("Right-Angled Triangle Star Pattern:");
  Starpattern(4,PatternType.asterick);


//Question no 11 (Making Pyramid)
print("Right-Angled Triangle Numaric Pattern:");
Starpattern(4,PatternType.number);

//Question no 12 (Making pyramid)
print('Right Angle Triangle Numeric pattern');
Starpattern(4,PatternType.repeated);

//Question no 13(Making Pyramid)
print('Right Angle Triangle Numeric pattern');
Starpattern(4,PatternType.incresingNumber);
}

enum PatternType {asterick,number,repeated,incresingNumber}
Starpattern(int n ,PatternType type) {
  int currentNumber = 1;
  for (var i = 1; i <= n; i++) {
    for (var j = 1; j <= i; j++) {
      switch (type) {
        case PatternType.asterick:
          stdout.write('* ');
          break;
          case PatternType.number:
          stdout.write('${j}');
          break;case PatternType.repeated:
          stdout.write('$i');
          break;
          case PatternType.incresingNumber:
          stdout.write('$currentNumber');
          currentNumber++;
          break;
      }
    }
    stdout.writeln();
  }
}


int cube(int num) {
  return (num * num * num);
}

bool Palindrome(String string) {
  int i = 0, j = string.length - 1;
  while (i < j) {
    if (string[i] != string[j]) {
      return false;
    }
    ;
    i++;
    j--;
  }
  return true;
}
