void main(){
  int marks  = 180 ;

  if( marks >= 90 && marks < 100 ){
    print("A+");
  }
  else if (marks >= 80 && marks < 90 ){
    print("A");
  }
  else if (marks >=70 && marks < 80 ){
    print("B");
  }
  else if (marks >= 60 && marks < 70){
    print ("C");
  }
  else if (marks>= 40 && marks < 60){
    print ("Work Hard!");
  }
  else if (marks >= 0 && marks < 40) {
    print ("You are failed");
  }
  else{
    print ("Invalid Marks");
  }
}