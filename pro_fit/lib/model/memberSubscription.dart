import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pro_fit/model/subscriptionPackages.dart';

part 'memberSubscription.g.dart';

@JsonSerializable(explicitToJson: true)
class MemberSubscription {
  SubscriptionPackages? memberPackage;
  DateTime? startDate;
  DateTime? endDate;
  bool? isCurrent;

  MemberSubscription(
      {this.memberPackage, this.startDate, this.endDate, this.isCurrent});

  //MemberSubscription(this.memberPackage, this.isCurrent);

  //factory MemberSubscription.fromJson(Map<String, dynamic> json) =>
  //    _memberSubscriptionFromJson(json);

  //get memberSubscription => null;

  //Map<String, dynamic> toJson() => _memberSubscriptionJson(this);

  //@override
  //String toString() => 'Member<$memberSubscription>';

  factory MemberSubscription.fromJson(Map<String, dynamic> json) =>
      _$MemberSubscriptionFromJson(json);
  Map<String, dynamic> toJson() => _$MemberSubscriptionToJson(this);
}

MemberSubscription _memberSubscriptionFromJson(Map<String, dynamic> json) {
  return MemberSubscription(
    memberPackage: json['memberPackage'] as SubscriptionPackages,
    startDate: (json['startDate'] as Timestamp).toDate(),
    endDate: (json['endDate'] as Timestamp).toDate(),
    isCurrent: json['isCurrent'] as bool,
  );
}

Map<String, dynamic> _memberSubscriptionJson(MemberSubscription instance) =>
    <String, dynamic>{
      'memberPackage': instance.memberPackage,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'isCurrent': instance.isCurrent,
    };
