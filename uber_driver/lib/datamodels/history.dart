import 'package:firebase_database/firebase_database.dart';

class History {
  late String pickup;
  late String destination;
  late String fares;
  late String status;
  late String createdAt;
  late String paymentMethod;

  History({
    required this.pickup,
    required this.destination,
    required this.fares,
    required this.status,
    required this.createdAt,
    required this.paymentMethod,
  });

  History.fromSnapshot(DataSnapshot snapshot) {
    pickup = snapshot.value['pickup_address'];
    destination = snapshot.value['destination_address'];
    fares = snapshot.value['fares'].toString();
    createdAt = snapshot.value['created_at'];
    status = snapshot.value['status'];
    paymentMethod = snapshot.value['payment_method'];
  }
}
