import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:random_string/random_string.dart';

String id = randomAlphaNumeric(10);

class DatabaseMethods {
  Future addFoodDetails(Map<String, dynamic> FoodInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("Food")
        .doc(id)
        .set(FoodInfoMap);
  }
}
