/*
1. Default Getter and Setter
2. Custom Getter and Setter
3. Private Instance Variable
*/
void main() {

  var student = Student();
  student.name = "Peter";     
  print(student.name);        

  student.percentage = 438.0;   
  print(student.percentage);    
}

class Student {

  late String name;        

  late double _percent;    


  void set percentage(double marksSecured) => _percent = (marksSecured / 500) * 100;

  double get percentage => _percent;
}