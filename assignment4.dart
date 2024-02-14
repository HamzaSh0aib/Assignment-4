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
  Starpattern(4, PatternType.asterick);

//Question no 11 (Making Pyramid)
  print("Right-Angled Triangle Numaric Pattern:");
  Starpattern(4, PatternType.number);

//Question no 12 (Making pyramid)
  print('Right Angle Triangle repeated pattern');
  Starpattern(4, PatternType.repeated);

//Question no 13(Making Pyramid)
  print('Right Angle Triangle increasing pattern');
  Starpattern(4, PatternType.incresingNumber);

//Question no 14
  print('Diamond Shape Triangle ');

  int number = 4;
  for (int i = 0; i < number; i++) {
    for (int j = (number - i); j > 1; j--) {
      stdout.write(' ');
    }
    for (int j = 0; j <= i; j++) {
      stdout.write('* ');
    }

    stdout.writeln();
  }

//Question no 15
  print('Diamond Shape Triangle ');

  int rows = 4;
  int updatevalue = 1;

  for (int i = 0; i < rows; i++) {
    for (int j = (rows - i); j > 1; j--) {
      stdout.write(' ');
    }
    for (int j = 0; j <= i; j++) {
      stdout.write('$updatevalue');
      updatevalue++;
    }

    stdout.writeln();
  }

//Question no 16
  String predefinedEmail = 'user@gmail.com';
  String predefinedpassword = '123456';

  String enterEmail;
  String enterpassword;

  while (true) {
    print('Enter Email(for first credentails)');
    enterEmail = stdin.readLineSync()!;
    print('Enter Password');
    enterpassword = stdin.readLineSync()!;
    if (enterEmail == predefinedEmail && enterpassword == predefinedpassword) {
      print('Login SuccesFull......');
      break;
    } else {
      print('Incorrect Credientails ....please try again');
    }
  }
  //Question no 17

  List<Map<String,String>> usercredientails = [
{'email':'user@gmail.com','password':'12345'},
{'email': 'admin@gmail.com','password': '123456'},
];

bool islogin = false;
while (!islogin) {
  print('Enter Email:(for Second Credientails)');
  String enterEmail = stdin.readLineSync()!;
 
  print('Enter Password:');
  String enterPassword = stdin.readLineSync()!;

  for (final credientails in usercredientails) {
    if (credientails['email']==enterEmail&& credientails['password']==enterPassword) {
      islogin = true;
    print('Login SuccessFull');
      break;
    } 
  }
  if(!islogin){
    print('Incoorect email and pasword please try again');
  }
}
//Question no 18
List<int> inputNumber = [];
bool isbool = false;
print('------Enter 7 number-----');
while (!isbool) {
int userInput = int.parse(stdin.readLineSync()!);
inputNumber.add(userInput);
if (inputNumber.length==7) {
  isbool = true;
  break;
}  
}
print('Numbers of List = $inputNumber');
for (final i in inputNumber) {
  if(i>5){
    print('Numbers that are Greater then 5 = $i');
  }
}
//Question no 19
print('Enter the String to find the Vowels words');
List vowels = ['a','e','i','o','u'];
String userinput = stdin.readLineSync()!;
List split =  userinput.split("");
List foundvowels = [];
for (var i in split) {
  if (vowels.contains(i)) {
    foundvowels.add(i);
  }
}
print('There are ${foundvowels.length} vowel word  found  from this String $userinput $foundvowels');


//Question no 20
List numbersoflist = [12,34,56,78,99,12,40];
int max = numbers[0];
int min = numbers[0];

for (var i in numbersoflist) {
  if(i>max){
    max=i;
  }
  else if(i<min){
    min=i;
  }
}
print('Maximun Element in List = $max');
print('Minimum Element in list = $min');

//question no 21
List<int> specificNUmber = [1,2,3,4,5,6,7,8,9,10,11,12,13];
List oddnumber =[];
int sum_of_squres = 0;
for (final  odd in specificNUmber) {
  if (odd %2!=0) {
    int squre = odd*odd;
    sum_of_squres+=squre;
    oddnumber.add(odd);
  }
}
print('Sum of Squares of all the odd numbers = $sum_of_squres');
print('Odd Numbers = $oddnumber');

}

enum PatternType { asterick, number, repeated, incresingNumber }

Starpattern(int n, PatternType type) {
  int currentNumber = 1;
  for (var i = 1; i <= n; i++) {
    for (var j = 1; j <= i; j++) {
      switch (type) {
        case PatternType.asterick:
          stdout.write('* ');
          break;
        case PatternType.number:
          stdout.write('${j}');
          break;
        case PatternType.repeated:
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
