import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{
  final String uid;
  DatabaseService({this.uid});
  //colection reference
  final CollectionReference healthCollection = Firestore.instance.collection('health');

  Future updateUserData(double height, double weight, String gender, String name) async {
    return await healthCollection.document(uid).setData({
      'height' : height,
      'weight' : weight,
      'bmi' : (weight/(height*height)).toDouble(),
      'name' : name ,
      'gender': gender,
    });
  } 

  //get health Stream
  Stream<QuerySnapshot> get healths {
    return healthCollection.snapshots();
  }
}