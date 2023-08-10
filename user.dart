import 'dart:io';

void main() {

  var acc_list = [];
  
  var process;
  do {

  print("hi, select your option:");
  print("creat account: c  /  login: l ");

  var  input_us = stdin.readLineSync();

  if (input_us == "c" || input_us == "C") {

    print("inter your email:");
    var email = stdin.readLineSync();

    print("inter password:");
    var password = stdin.readLineSync();

    print("inter fullname:");
    var fullName = stdin.readLineSync();

    print("inter your age:");
    var age = int.parse(stdin.readLineSync()!);

    print("inter your username:");
    var userName = stdin.readLineSync();

    acc_list.add(account(email: email , age: age , fullName: fullName , userName: userName , password: password ));

    print("your account is created");

  }else if ((input_us == "l" || input_us == "L")) {
    print("inter your email");
    var input_email = stdin.readLineSync();
    print("inter your password");
    var input_pass = stdin.readLineSync();

    var check_acc = acc_list.firstWhere((element) =>
    element.email == input_email
        &&
    element.password == input_pass ,
       orElse: () => null,
    );

    print(check_acc);
    
    if(check_acc != null) {
      print('Login successful. Welcome back, ${check_acc.userName}!');
    } else {
      print('Invalid credentials. Please try again.');
    }  }

  print("do you want any another process");
  print(" yes : y  |  no : n ");

  process = stdin.readLineSync();
    
  } while (process == "y" || process == "Y");
  
  }



class account {
  String? email ;
  String? userName ;
  String? fullName ;
  String? password ;
  int? age ;

  account({email , userName , fullName , age , password}) {
    this.email = email;
    this.userName = userName;
    this.fullName = fullName;
    this.age = age;
    this.password = password;
  }

}
