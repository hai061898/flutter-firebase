import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_firebase/models/auth_model.dart';

class FireStoreUser {
  final CollectionReference _userCollectionRef = FirebaseFirestore.instance.collection('Users');
  Future<void> addUsertoFireStore(UserModel userModel) async {
     return await _userCollectionRef
        .doc(userModel.userId)
        .set(userModel.toJson());
  }
}