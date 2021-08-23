import 'package:firebase_database/firebase_database.dart';

class Driver{
  late String fullName;
  late String email;
  late String phone;
  late String id;
  late String carModel;
  late String carColor;
  late String vehicleNumber;

  Driver({
    required this.fullName,
    required this.email,
    required this.phone,
    required this.id,
    required this.carModel,
    required this.carColor,
    required this.vehicleNumber,
  });

  Driver.fromSnapshot(DataSnapshot snapshot){
    id = snapshot.key!;
    phone = snapshot.value['phone'];
    email = snapshot.value['email'];
    fullName = snapshot.value['fullname'];
    carModel = snapshot.value['vehicle_details']['car_model'];
    carColor = snapshot.value['vehicle_details']['car_color'];
    vehicleNumber = snapshot.value['vehicle_details']['vehicle_number'];
  }

}