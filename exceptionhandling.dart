/*An exception is an error that takes place inside the program.
When an exception occurs inside a program the normal flow of the program is disrupted and it terminates abnormally,
displaying the error and exception stack as output. So, an exception must be taken care to prevent the application from termination. 
try { 
   // program that might throw an exception 
}  
on Exception1 { 
   // code for handling exception 1
}  
catch Exception2 { 
   // code for handling exception 2
}
*/
void main(){
print("CASE 1");
		try {
		int result = 12 ~/ 0;
		print("The result is $result");
	} on IntegerDivisionByZeroException {
		print("Cannot divide by Zero");
	}

	print(""); print("CASE 2");
	
	try {
		int result = 12 ~/ 0;
		print("The result is $result");
	} catch (e) {
		print("The exception thrown is $e");
	}

	print(""); print("CASE 3");
	
	try {
		int result = 12 ~/ 0;
		print("The result is $result");
	} catch (e, s) {
		print("The exception thrown is $e");
		print("STACK TRACE \n $s");
	}

	print(""); print("CASE 4");
	
	try {
		int result = 12 ~/ 3;
		print("The result is $result");
	} catch (e) {
		print("The exception thrown is $e");
	} finally {
		print("This is FINALLY Clause and is always executed.");
	}

	print(""); print("CASE 5");
	try {
		depositMoney(-200);
	} catch (e) {
		print("error");
	} finally {
	}
}

class DepositException implements Exception {
	String errorMessage() {
		return "You cannot enter amount less than 0";
	}
}

void depositMoney(int amount) {
	if (amount < 0) {
		throw new DepositException();
	}
}