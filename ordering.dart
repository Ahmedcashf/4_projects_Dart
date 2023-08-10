import 'dart:io';

main() {
   var crea = Operations();
  do {
    print("hi , what is your operation");
    print("create order : 1  |  order arrival : a  |  your orders list : y  |  resturant orders list : r");
    var opera = stdin.readLineSync();
    if (opera == "1") {
      crea.creationOrder();
    }else if (opera == "3") {
      crea.orderUserList();
    }


  }while(true);

}


class Ordering {
 int Id = 0 ;
late String Adress;
late String user ;
late String Resturant ;
late String item ;
late int price;
String? delivary;

Ordering({required this.Id ,
  required this.Adress ,
  required this.user ,
  required this.Resturant ,
  required this.item ,
  required this.price ,
  this.delivary});

}


class Operations {
  var orderList = [];
  int id = 0;
  creationOrder () async {
    print(orderList);
    late var price ;
    late var resturant;
    ++id;
    print("inter your address");
    var address = stdin.readLineSync();
    if(address == null) {
      print("please inter inter your address");
    }
    print("inter your name");
    var name = stdin.readLineSync();
    print("your item");
    print("pasta : p  |  pizza  : z");
    var item = stdin.readLineSync();
    if(item == "p" || item == "P") {
      print("choose resturant");
      print("rostica : 1 , italiano : 2 , pastica : 3 ");
       resturant  = stdin.readLineSync();
      if(resturant == "3") {
        print ("choose your order");
        print("pasta with chease : 100 LE => inter c,  pasta with white souse : 90 LE => inter w");
        var pastaItem = stdin.readLineSync();
        if(pastaItem == "c"  ||  pastaItem == "C") {
           price = 100;
           print("confirm order   yes : 1  |  no : 2");
           var confirm = stdin.readLineSync();
           if(confirm == "1") {
             print("order cerate");
           }else if (confirm == "2") {
             print("try again");
           }
        }else if(pastaItem == "w"  ||  pastaItem == "W") {
          price = 90;
          print("confirm order   yes : 1  |  no : 2");
          var confirm = stdin.readLineSync();
          if(confirm == "1") {
            print("order cerate");
          }else if (confirm == "2") {
            print("try again");
          }
        }else {
          print("not avaliable");
        }
      }
    }else if (item == "z" || item == "Z"){
      print("choose resturant");
      print("rostica , baba jons , fatoma , pizza king");
       resturant  = stdin.readLineSync();
    }else {
      print ("not avalible");
    }
    var delivared = Future.delayed(Duration (minutes: 20) , () => "order delivared");

    var newOrder = Ordering(Id: id, Adress: address!, user: name!, Resturant: resturant, item: item!, price: price ,  delivary: await delivared);
    orderList.add(newOrder);
    for(var item in orderList) {
      print(item.user);
    }
    
  }
  
  orderUserList () {
    print("Enter the name you requested ");
    var usName = stdin.readLineSync();
     var orForUs = orderList.where((element) => element.user == usName) . toList();
    orForUs.forEach((element) => print("resturant : ${element.Resturant} & item : ${element.item} & price : ${element.price}"));
  }

}

