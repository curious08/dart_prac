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
}
