import 'dart:io';
import 'package:flutter_application_1/dartpr/dart1/print.dart';
import 'product.dart';

class Cart extends PrintList{
  cart() {
    stdout.write('Select product from the list(as productId):');
    int a = int.parse(stdin.readLineSync()!);
    if (a > 0 && a <= productdata['Product']!.length) {
      stdout.write("Select quantity of product (available is ${pQ[a - 1]}):");
      double qt = double.parse(stdin.readLineSync()!);
      if (qt >= 0 && qt <= productdata['Quantity']?[a - 1]) {
        cartdata['Product'].add(productdata['Product']?[a - 1]);
        cartdata['Quantity'].add(qt);
        cartdata['Price'].add(productdata['Price']?[a - 1]*qt *(100 - productdata['Discount']?[a - 1]) /100);
        productdata['Quantity']?[a-1]-=qt;
        printcart();
      } else {
        print("Please select valid number");
        cart();
      }
    } else
      cart();
  }

  removecart() {
    bool wha=true;
    while(wha){
      stdout.write("Which product you want to remove (Enter id as 1,2,3):");
      int a = int.parse(stdin.readLineSync()!);
      if (a > 0 && a <= cartdata['Product']!.length) {
        print("Number of ${cartdata['Product']?[a-1]} is in the cart : ${cartdata['Quantity']?[a-1]}");
        stdout.write("How much ${cartdata['Product']?[a-1]} you want to remove from the cart : ");
        bool wh = true;
        while (wh) {
          int b = int.parse(stdin.readLineSync()!);
          if (b <= cartdata['Quantity']?[a-1] && b >= 0) {
            for(int i=0;i<productdata['Product']!.length;i++){
              if(productdata['Product']?[i]==cartdata['Product']?[a-1]){
                cartdata['Quantity']?[a-1] -= b;
                cartdata['Price']?[a-1] -= productdata['Price']?[i]*b *(100 - productdata['Discount']?[a - 1]) /100;
                if(cartdata['Quantity']?[a-1]==0){
                  cartdata['Product'].removeAt(a-1);
                  cartdata['Quantity'].removeAt(a-1);
                  cartdata['Price'].remoceAt(a-1);
                }
                productdata['Quantity']?[i]+=b;
                wh = false;
                wha = false;
                printcart();
                break;
              }
            }
          } else {
            stdout.write("Please enter valid amount:");
          }
        }
      } else {
        print("Enter valid number");
      }
    }
  }
  addcart() {
    stdout.write('Select product from the list to add(as productId):');
    int a = int.parse(stdin.readLineSync()!);
    if (a > 0 && a <= productdata['Product']!.length) {
      stdout.write("Select quantity of product (available is ${pQ[a - 1]}):");
      double qt = double.parse(stdin.readLineSync()!);
      if (qt >= 0 && qt <= productdata['Quantity']?[a - 1]) {
        if(cartproduct.contains(productdata['Product']?[a-1])){
          for(int i=0;i<cartdata['Product']!.length;i++){
            if(cartdata['Product']?[i]== productdata['Product']?[a - 1]){
              cartdata['Quantity']?[i] +=qt;
              productdata['Quantity']?[a-1];
              cartdata['Price']?[i] +=productdata['Price']?[a - 1]*qt *(100 - productdata['Discount']?[a - 1]) /100;
            }
          }
        }else{
          cartdata['Product'].add(productdata['Product']?[a - 1]);
          cartdata['Quantity'].add(qt);
          cartdata['Price'].add(productdata['Price']?[a - 1]*qt*(100-productdata['Discount']?[a-1])/100);
        }
        productdata['Quantity']?[a - 1] -= qt;
        printcart();
      } else {
        print("Please select valid number");
        cart();
      }
    } else{
      print("Please, enter a valid number");
      cart();
    } 
  }
  loop(){
    bool wh = true;
    while (wh) {
      stdout.write(
          "Do you want to update any product from cart (1 for add, 2 for remove, 0 for no):");
      int upd = int.parse(stdin.readLineSync()!);
      switch (upd) {
        case 2:
          removecart();
        case 0:
          wh = false;
        case 1:
          addcart();
        default:
          print("Something went wrong, Try again");
      }
    }
  }
}