
  List<String> pN = ["laptop  ", "keyboard", "mouse   "];
  List<int> pI = [1, 2, 3];
  List<double> pP = [100000, 1000, 500];
  List<double> pQ = [100, 200, 300];
  List<double> pD=[10.0, 20.0, 30.0];
  var productdata = <String,dynamic>{
    "ProductId": pI,
    "Product": pN,
    "Price": pP,
    "Quantity": pQ,
    "Discount": pD 
  };

List<String> cartproduct = [];
List<double> cartqt = [];
List<double> cartpri = [];

List<int> pn = [1,2,3];
var cartdata = <String, dynamic>{
  "ProductId": pn,
  "Product": cartproduct,
  "Quantity": cartqt,
  "Price": cartpri
};

//class Product{}