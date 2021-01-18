import "package:cloud_firestore/cloud_firestore.dart";

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  final CollectionReference userprofileCollection =
      FirebaseFirestore.instance.collection('userprofilecollection');

  Future updateUserData(String name, String semester) async {
    return await userprofileCollection
        .doc(uid)
        .set({'name': name, 'semester': semester});
  }
}
