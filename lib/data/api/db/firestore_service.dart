
import 'package:call_agent/data/model/connection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../database_service.dart';

class FirestoreService extends DatabaseService{

  @override
  Future<void> addNewCall({required Connection connection}) async {
    DocumentReference docRef = await FirebaseFirestore.instance.collection('calls').add(connection.toJson());
    updateCall(connection: connection.copyWith(id: docRef.id, userId: FirebaseAuth.instance.currentUser!.uid),);
  }

  @override
  Stream<List<Connection>> userConnections() {
    return FirebaseFirestore.instance.collection('calls').where('userId', isEqualTo: FirebaseAuth.instance.currentUser!.uid).
    snapshots().map((event) {
      return event.docs.map((e) => Connection.fromJson(e.data())).toList();
    });
  }

  @override
  Future<void> deleteCall({required Connection connection}) async{
    return FirebaseFirestore.instance.collection('calls').doc(connection.id).delete();
  }

  @override
  Future<void> updateCall({required Connection connection}) {
    return FirebaseFirestore.instance.collection('calls').doc(connection.id).update(connection.toJson());
  }

}