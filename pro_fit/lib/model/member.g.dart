// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Member _$MemberFromJson(Map<String, dynamic> json) {
  return Member(
    json['uid'] as String,
    json['firstName'] as String,
    json['lastName'] as String,
    DateTime.parse(json['joinedDate'] as String),
    memberCurrentSubscription: json['memberCurrentSubscription'] == null
        ? null
        : MemberSubscription.fromJson(
            json['memberCurrentSubscription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MemberToJson(Member instance) => <String, dynamic>{
      'uid': instance.uid,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'joinedDate': instance.joinedDate.toIso8601String(),
      'memberCurrentSubscription': instance.memberCurrentSubscription?.toJson(),
    };
