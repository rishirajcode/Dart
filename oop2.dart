/*
1. Default Constructor
2. Parameterized Constructor
3. Named Constructor
4. Constant Constructor



*/
void main() {

	var student1 = Student(23, "Peter"); 		
	print("${student1.id} and ${student1.name}");

	student1.study();
	student1.sleep();

	var student2 = Student(45, "Sam");		
	print("${student2.id} and ${student2.name}");

	student2.study();
	student2.sleep();


	var student3 = Student.myCustomConstructor();   
	student3.id = 54;
	student3.name = "Rahul";
	print("${student3.id} and ${student3.name}");


	var student4 = Student.myAnotherNamedConstructor(87, "Paul");
	print("${student4.id} and ${student4.name}");
}

class Student {
	int id = -1;
	String name;

	Student(this.id, this.name);    

	// Student.myCustomConstructor() {                 
	// 	print("This is my custom constructor");
	// }

	Student.myAnotherNamedConstructor(this.id, this.name);  

	void study() {
		print("${this.name} is now studying");
	}

	void sleep() {
		print("${this.name} is now sleeping");
	}

  static myCustomConstructor() {}
}