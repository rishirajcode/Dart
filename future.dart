import 'dart:async';

main() {

  print('Main program: Starts');

  printFileContent();

  print('Main program: Ends');
}

printFileContent() {
  
  Future<String> fileContent =  downloadAFile();
  fileContent.then((resultString)){
    print('The content of the file is --> $fileContent');
  });
}

Future<String> downloadAFile() {

  Future<String> result = Future.delayed(Duration(seconds: 6)), (){
    return 'My secret file content' ;
  }

}
