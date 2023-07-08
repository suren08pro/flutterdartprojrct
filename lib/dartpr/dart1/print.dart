import 'dart:io';
import 'product.dart';

class PrintList{
  
  printList(var n) {
    print('Product list');
    for (var pd in n.keys) {
      if (pd == 'Product') {
        stdout.write(pd + "\t\t\t");
        continue;
      }
      stdout.write(pd + "\t");
    }
    print("");
    for (int i = 0; i < n['Product'].length; i++) {
      for (var key in n.keys) {
        stdout.write(n[key]?[i]);
        stdout.write("\t\t");
      }
      print("");
    }
  }
  printcart(){
    print("Cart List");
    for (var pd in cartdata.keys) {
      if (pd == 'Product') {
        stdout.write(pd + "\t\t");
        continue;
      }
      stdout.write(pd + "\t");
    }
    print("");
    for (int i = 0; i < cartproduct.length; i++) {
      for (var key in cartdata.keys) {
        if (cartdata['Quantity'] == 0) continue;
        stdout.write(cartdata[key]?[i]);
        stdout.write("\t\t");
      }
      print("");
    }
  }
}