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

  ///Types & Operations

  //this is a comment (single line comment)
  /* this is also a commnet
  over many 
  many lines....
   */
  /// I am a documentation comment

  //data type in dart
  //int
  //double
  //num
  //dynamic
  //String
  /// you can create your own custome types too
  /// root of all types is Object type
  /// every other type in dart is subtype of object, and as a subtype shares object's basic functionality
  ///
  const myInteger = 10;
  //in the absence of type dart figers out the correct type of each constant above
  const myDouble = 10.5;

  //checking type at runtime
  num myNum = 10.5;
  print(myNum is double); //true
  print(myNum is int); //false
//recall both int and double are subtype of num
//another way to use runtimeType
  print(myNum.runtimeType); //double

  ///type conversion
  ///var integer = 100;
  ///var decimal = 12.5;
  ///integer = decimal;
  ///A value of type 'double' can't be assigned to a variable of type 'int'.
  ///
  ///no implicit conversion
  ///integer = decimal.toInt();
  ///
  print(myNum.toInt()); //doubel to int explicitly

  const hourlyRate = 19.5;
  const hoursWorked = 10;
  const totalCost = hourlyRate * hoursWorked;
  //what is the type of totalCost? int * double => double (because double is safest choice here )
  print(totalCost.runtimeType);
  //if you want int
  print(totalCost.toInt());
  //where to use const where to use final?? see the error

  //const anotherCost = (hourlyRate * hoursWorked).toInt();

  //in the above code it is applying toInt() in run time so final is required
  /*
  The parentheses tell Dart to do the multiplication first, and after that, to take the result and convert 
  it to an integer value. However, the compiler complains about this: Const variables must be initialized 
  with a const ant value.
  The problem is that toInt is a runtime method. This means that totalCost can’t be determined 
  at compile time, so making it const isn’t valid. No problem; there’s an easy fix.
  Just change const to final:
  */
  const double wantDouble = 3;
  print(wantDouble); //3.0

  ///Casting down
  num someEvenNum = 3;
  final someInt = someEvenNum as int;
  print("3.isEven => ${someInt.isEven}");

  const age1 = 42;
  const age2 = 21;
  const averageAge = (age1 + age2) / 2;

  //String
  var salutation = "Heello.... ";
  print(salutation.codeUnits);

  print("I love Pizza");
  print('I love Pizza');
  print("Pizza Lover's");
  print('Pizza Lover\s');

  //concatenation
  var msg = "Hello " + "Sumesh ";
  const greeting = "how's you...";
  msg += greeting;
  print(msg);

  // to do a lot of concatenation better use stringbuffer
  final message = StringBuffer();
  message.write("Hello ");
  message.write("From String ");
  message.write("Buffer... ");
  print(message.toString());

  //string interpolation
  const nameX = "Sumesh";
  const msgX = "Hello $nameX how's you hope you got my msg";
  print(msgX);

  const oneThird = 1 / 3;
  const sentence = "One third is $oneThird .";
  print(sentence); // One third is 0.333333333333333
  //how to fix with fixed decimal
  final newSentence =
      "One third is ${oneThird.toStringAsFixed(3)}"; //why final ? becaue toStringAsFixed works runtime
  print(newSentence); // One third is 0.3333

  //multi line strings
  const bigString = '''hello this is a
    big string
    it will be a
    long string that contains
    several lines
  ''';
  print(bigString); //''' or """ both are same
  /*
  don’t want the output string to contain newline characters, then you can
  surround each line with single-quotes:
   */
  const oneLine = 'this is a single line'
      ' only'
      ' thats it.';
  print(oneLine);

  const twoLines = 'This is a new\nline please see it.';
  print(twoLines);
  /*
  sometimes you want to ignore any special characters that a string might contain. 
  To do that, you can create a raw string by putting r in front of the string literal
   */
  const rawString = r'my name is \n is $name';
  print(rawString);

  //inserting charcter from there codes
  print(
      'I \u2764 Dart\u0021'); //using unicode \u followed by 4digit hexadecimal code
  //for code points values higher than hexadecimla FFFF
  print("I Love \u{1F3AF}");

  ///Objects and dynamic types
  /*
  Dart grew out of the desire to solve some problems inherent in JavaScript. JavaScript is a dynamically-typed language.
  Dynamic means that something can change, and for JavaScript that means the types can change at runtime.
   */
  var myVariable = 42;
  //myVariable = "Hello";//comiple time error valid in js not in dart

  ///the creator of dart inculded dynamic type who wants to write code in dynamic way
  dynamic myDynamicVar = 1989;
  print(myDynamicVar.runtimeType);
  myDynamicVar = "Hello Sumesh";
  print(myDynamicVar.runtimeType);

  /*
  While dynamic is built into the system, it’s more of a concession rather than an encouragement to use it. You
  should still embrace static typing in your code as it will prevent you from making silly mistakes.
  If you need to explicitly say that any type is allowed, you should consider using the Object? type.
  */
  Object myObjVar = 42;
  print(myObjVar.runtimeType);
  myObjVar = "Sumesh";
  print(myObjVar.runtimeType);

  /*
  At runtime, Object? and dynamic behave nearly the same.
  However, when you explicitly declare a variable as Object?,
  you’re telling everyone that you generalized your variable on
  purpose, and that they’ll need to check its type at runtime if
  they want to do anything specific with it. Using dynamic, on
  the other hand, is more like saying you don’t know what the
  type is; you’re telling people they can do what they like with
  this variable, but it’s completely on them if their code
  crashes.
  */

  ///Control Flow begins
  ///page 106
}
