import 'dart:io';

import 'package:test/expect.dart';

 main() {

   var resturantList = [];

   do {
     print("what is your mission ?");
     print("user : us or supervisor : sv");

     var mission = stdin.readLineSync();

     if(mission== "sv") {
       print ("what you want ?");
       print("1- Add Resturant ");
       print("2- Add new food for Resturant ");

       var svSelected = stdin.readLineSync();

       if(svSelected == "1") {

         print("inter resturant name");
         var resturantName = stdin.readLineSync();

         print("inter location for resturant");
         var resturantLocation = stdin.readLineSync();

         print("what is description");
         var resturantDescription = stdin.readLineSync();

         print("inter menu for foods");
         List<String> resturantMenu =
         [stdin.readLineSync()!, stdin.readLineSync()!];

         resturantList.add(Resturant(
             name: resturantName!,
             location: resturantLocation!,
             description: resturantDescription!,
             menu: resturantMenu!));

         print(resturantList[0].name);

       }else if (svSelected == "2") {

         print("what is name for resturant");
         var nameResturant = stdin.readLineSync();

         print("inter nem dish");
         var newDish = stdin.readLineSync();

         var checkResturant = resturantList.firstWhere((element) =>
         element.name == nameResturant ,
             orElse: ( ) => null) ;

         if(checkResturant != null) {
           checkResturant.menu.add(newDish);
         }else {
           print("resturant not vaild");
         }

       }

     }else if (mission == "us") {

       print("select your option");
       print("'1- quality dishes "
           "2-order""'");

       var userSelect = stdin.readLineSync();

      if (userSelect == "1") {



      }else if(userSelect == "2") {
        var items = [];

        for (var item in resturantList) {
          items.add(item.name);
          print(items);
        }

        print ("select resturant");
        print(resturantList);
        var selectResturant = stdin.readLineSync();

        if (selectResturant == items[0]) {

          print (resturantList[0].menu);

          print("do you want one dish or more ?");
          print("1- one   || 2-multi " );
          var selectOrder = stdin.readLineSync();

          print("select dish  ordring 1,2,...... ");

          if(selectOrder == "1") {

            var selectDich = stdin.readLineSync();

            if(selectDich == "1") {
              print("your dish is ${resturantList[0].menu[0]}");
            }

          }else if (selectOrder == "2") {

            List dishes = [];

            print("number of dishes you want");
            var numderDishes = stdin.readLineSync();

            for (var x = 0 ; x< numderDishes!.length; x++ ) {
              var dish = stdin.readLineSync();

              if ( dish == "1" ) {
                var genderDish = resturantList[0].menu[0];
                dishes.add(genderDish);
              }

            }

            for (var item in dishes) {
              print(item);
            }
            print("that is your order");

          }

        }
      }
     }


   }while(true);

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