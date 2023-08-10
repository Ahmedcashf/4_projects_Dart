import 'dart:io';

main() {
  List resturantList = [];
   
var resturant1 = Resturant(name: "rostica",
    location: "street num 9",
    description: "resturant for fast food",
    menu: ["1- sallamy pizza : 120 LE" , "2-burger pizza : 130 LE"]);

var resturant2 = Resturant(name: "kofta",
    location: "street num 10",
    description: "for all sandwich",
    menu: ["1-burger : 30 LE " , "2-Beef liver : 25 LE"]);

resturantList.add(resturant1);
resturantList.add(resturant2);

var resturantListName = [];

for (var item in resturantList) {
  resturantListName.add(item.name);
}

print(resturantListName);
print("inter resturant in order 1,2,.....");

var seleResturant = stdin.readLineSync();

if (seleResturant == "1") {
  print("rostica resturant menu");
  print(resturant1.menu);
  print("inter resturant in order 1,2,.....");
  var foodSelected = stdin.readLineSync();
  if (foodSelected=="1"){
     print("order is : sallamy pizza");
  }
}





}


class Resturant {
  late String name ;
  late String location ;
  String ? description;
  late List menu;

  Resturant({ required this.name ,
    required this.location ,
    required this.description ,
    required this.menu });
}



