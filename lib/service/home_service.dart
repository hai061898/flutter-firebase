import 'package:cloud_firestore/cloud_firestore.dart';

class HomeService{
  final CollectionReference _category = FirebaseFirestore.instance.collection('categories');
  final CollectionReference _product = FirebaseFirestore.instance.collection('Products');
  Future<List<QueryDocumentSnapshot>> getCategory() async {
    var value = await _category.get();
    return value.docs;
  }
  Future<List<QueryDocumentSnapshot>> getBestSelling() async {
    var value = await _product.get();

    return value.docs;
  }

}