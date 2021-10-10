import 'package:json_annotation/json_annotation.dart';

import 'memberSubscription.dart';

part 'member.g.dart';

@JsonSerializable(explicitToJson: true)
class Member {
  String uid;
  final String firstName;
  final String lastName;
  DateTime joinedDate;
  MemberSubscription? memberCurrentSubscription;

  Member(this.uid, this.firstName, this.lastName, this.joinedDate,
      {this.memberCurrentSubscription});
  //Member(this.uid, this.firstName, this.lastName, this.joinedDate);

  //factory Member.fromSnapshot(DocumentSnapshot snapshot) {
  //  final newMember = Member.fromJson(snapshot.data() as Map<String, dynamic>);
  //  newMember.uid = snapshot.reference.id;
  //  return newMember;
  //}

  //factory Member.fromJson(Map<String, dynamic> json) => _memberFromJson(json);

  //get member => null;

  //Map<String, dynamic> toJson() => _memberJson(this);
  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$MemberToJson(this);
  //@override
  //String toString() => 'Member<$member>';
}
