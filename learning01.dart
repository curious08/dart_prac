import 'dart:math';

///ways to execute dart
///dart run learning01.dart
///
///main arguments are optional used as cmd line application
///
///lil bit about git
///git --version //will initialise repositry
///
///git status // to know the status of files modification and deletion
///git config --global user.email
///git config --global user.name
///
///another way to change
///git config --global --edit
///
///to add a file
///git add filename
///git add . // add all the file
///___________________             ______________                ____________
///|working directory| git add --> |staging area| --> git commit |repository|
///-------------------             --------------                ------------
///to see commits we use git log
///git log
///
///you can move inbetween commits
///git checkout <coomit hash code/branch name>
///
///git branch dev
///
///git checkout dev
///
///git checkout -b sumesh/multiply //-be se ek nai branch ban jayegi aur aap use directly checkout bhi kar jaoge sumesh/multiply ka convention follow karna chahiye username/featurename
///
///now if you develop some feature in one branch and you want to add in master
///merge concept
///git checkout dev
///git merge sumesh/multiply
///
///git log
///
///git checkout master //master doesnot know about this feature
///
///.gitignore file
///whatever file you put in gitignore it will ignore
///

void main(List<String> args) {
  //to print on console
  print("Hello Dart....");

  ///simple operation
  ///add
  ///subtract
  ///multiply
  ///divide
  print("2+6 ${2 + 6}");
  print("2-6 ${2 - 6}");
  print("2*6 ${2 * 6}");
  print("13/6 ${13 / 6}");

  ///different behaviour mark it not integer division its decimal answer
  ///if you want integer division use this ~/(truncating division operator)
  print("13/6 ${13 ~/ 6}");
  //euclidion modulo operator %
  print("13%6 ${13 % 6}");

  //order of operation
  //operator precedence

  //import 'dart:math'
  print("utilizing math library");
  print(sin(45 * pi / 180)); //here 45*pi/180 -> converts into radian
  print(sqrt(2));
  print("max(5,10) ${max(5, 10)}");
  print("min(5,10) ${min(5, 10)}");
  print(1 / sqrt(2));

  ///10, 3.14159 every other value that you can assign to a variable are objects in Dart.
  ///Dart doesn’t have the primitive variable types that exist in some languages. Everything is an object. Although int and double look like primitives, they’re subclasses of num, which is a subclass of Object
  ///With numbers as objects, this lets you do some interesting things
  print("10.isEven = ${10.isEven}");
  print("3.14159.round() = ${3.1459.round()}");

  ///variables type anotation
  int number = 10;
  print(number);

  ///type safety
  ///That means once you tell Dart what a variable’s type is, you can’t change it later
  /// number =10.5 not allowed in dart in int you can't assign double
  num myNumber; // num type can be int can be double but not string
  myNumber = 10;
  print(myNumber);
  myNumber = 10.5;
  print(myNumber);

  ///if you like to live dangerously, you can throw type safety to the wind and use the dynamic type
  ///
  dynamic myVar;
  myVar = "Sumesh"; //ok
  myVar = 10; //ok
  myVar = 10.5; //ok

  //type inference use var keyword (use whatever type is appropriate)
  var someNumber = 10;
  print(someNumber.runtimeType);

  //Trying to set someNumber to a double will result in an error.Your program won’t even compile.
  //someNumber = 10.5;

  ///constants
  ///variables whoes value never change
  ///const and final
  const myConstant = 10;
  //final for runtime constant
  // const is for comoile time constant

  //decrement and increment
  var counter = 0;
  counter += 1;
  print("counter at $counter");
  counter++;
  print("counter at $counter");
  print("counter at ${counter++}");
  print("counter at $counter");
  --counter;
  print("counter at $counter");

  

}
