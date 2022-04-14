/*
CLASS AND OBJECTS
 Dart provides class keyword followed by a class name is used to define a class; all fields and functions are enclosed
 by the pair of curly braces ({}).

 An object is a variable or instance of the class used to access the class's properties.
 */
void main() {
  var student1 = Student();
  student1.id = 23;
  student1.name = "Peter";
  print("${student1.id} and ${student1.name}");

  student1.study();
  student1.sleep();

  var student2 = Student();
  student2.id = 45;
  student2.name = "Sam";
  print("${student2.id} and ${student2.name}");
  student2.study();
  student2.sleep();
}

class Student {
  int id = -1;
  late String name;

  void study() {
    print("${this.name} is now studying");
  }

  void sleep() {
    print("${this.name} is now sleeping");
  }
}
