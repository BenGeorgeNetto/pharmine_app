class Order {
  final String medicineName;
  final String arrivalDay;
  final String orderStatus;
  final String orderDate;
  final double price;
  final String orderID;
  final String quantity;

  Order({
    required this.medicineName,
    required this.arrivalDay,
    required this.orderStatus,
    required this.orderDate,
    required this.price,
    required this.orderID,
    required this.quantity,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      medicineName: json['medicineName'],
      arrivalDay: json['arrivalDay'],
      orderStatus: json['orderStatus'],
      orderDate: json['orderDate'],
      price: json['price'],
      orderID: json['orderID'],
      quantity: json['quantity'],
    );
  }

  Map<String, dynamic> toJson() => {
    'medicineName': medicineName,
    'arrivalDay': arrivalDay,
    'orderStatus': orderStatus,
    'orderDate': orderDate,
    'price': price,
    'orderID': orderID,
    'quantity': quantity,
  };
}
