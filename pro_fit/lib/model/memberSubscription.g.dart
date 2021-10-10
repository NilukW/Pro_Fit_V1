// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memberSubscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberSubscription _$MemberSubscriptionFromJson(Map<String, dynamic> json) {
  return MemberSubscription(
    memberPackage: json['memberPackage'] == null
        ? null
        : SubscriptionPackages.fromJson(
            json['memberPackage'] as Map<String, dynamic>),
    startDate: json['startDate'] == null
        ? null
        : DateTime.parse(json['startDate'] as String),
    endDate: json['endDate'] == null
        ? null
        : DateTime.parse(json['endDate'] as String),
    isCurrent: json['isCurrent'] as bool?,
  );
}

Map<String, dynamic> _$MemberSubscriptionToJson(MemberSubscription instance) =>
    <String, dynamic>{
      'memberPackage': instance.memberPackage?.toJson(),
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'isCurrent': instance.isCurrent,
    };
