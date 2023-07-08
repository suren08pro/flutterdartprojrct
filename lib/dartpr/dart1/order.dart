import 'dart:io';
import 'package:flutter_application_1/dartpr/dart1/cart.dart';
import 'product.dart';

class Order extends Cart{
  order() {
    print('Order list');
    for (var pd in cartdata.keys) {
      if(pd=='Product'){
        stdout.write(pd+"\t\t");
        continue;
      }
      stdout.write(pd + "\t");
    }
    print("");
    for (int i = 0; i < cartproduct.length; i++) {
      for (var key in cartdata.keys) {
        stdout.write(cartdata[key]?[i]);
        stdout.write("\t\t");
      }
      print("");
    }
    double tp=0;
    for(int i=0;i<cartdata['Price']!.length;i++)
      tp+=cartdata['Price']?[i];
    print("Total cart price =${tp}");
  }
  paid(){
    cartproduct = [];
    cartqt = [];
    cartpri = [];

    pn = [];
    cartdata = <String, dynamic>{
      "ProductId": pn,
      "Product": cartproduct,
      "Quantity": cartqt,
      "Price": cartpri
    };
  }
}