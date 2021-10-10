import 'package:cloud_firestore/cloud_firestore.dart';

import 'member.dart';

class MemberRepository {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('Members');

  Stream<QuerySnapshot> getStream() {
    return collection.snapshots();
  }

  Future<DocumentReference> addMember(Member member) {
    return collection.add(member.toJson());
  }

  void updateMember(Member member) async {
    await collection.doc(member.uid).update(member.toJson());
  }

  void deleteMember(Member member) async {
    await collection.doc(member.uid).delete();
  }
}
