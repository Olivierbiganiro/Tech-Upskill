class Product {
  String name;
  int price;
  //class constractor
  Product(this.name, this.price);
  //class function
  String toString() {
    return '{Name:${this.name},  Price:${this.price} }';
  }
}

//main body of program
void main() {
  var list = [];
  var list2 = [];
  var list3 = [];
  var sum1 = 0, sum2 = 0;
  var sortedByValueMap;
  Map item = {
    'Bike': 100,
    'TV': 200,
    'Album': 10,
    'Book': 5,
    'Phone': 500,
    'Computer': 1000
  };
  //display product list as are given
  item.forEach((key, value) => list.add(Product(key, value)));
  print('Given Product :$list');
  //Sort item accoording to small price
  sortedByValueMap = Map.fromEntries(
      item.entries.toList()..sort((e1, e2) => e1.value.compareTo(e2.value)));
  print("Sorted Item:$sortedByValueMap");
  //put Item price in one list so as to calculate sum
  sortedByValueMap.forEach((key, value) => list2.add(value));
  //product that will be bought when you don't have much money I mean Cheap one
  print('Cheap one ${sortedByValueMap.keys.toList().first}');
  //product that will be expensive in the array
  print('expensive one ${sortedByValueMap.keys.toList().last}');
  for (int i in list2) {
    sum1 += i;
    if (i > 10) {
      list3.add(i);
    }
  }
  ;
  //Calculate the full price of all product combined
  print('Sum of price of all product  $sum1');
  for (int j in list3) {
    sum2 += j;
  }
  ;
  //full price of all product combined and remove product that are under the 10 dollar
  print('full price remove by product 10 dollar $sum2');
}
