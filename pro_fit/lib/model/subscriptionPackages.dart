import 'package:json_annotation/json_annotation.dart';

part 'subscriptionPackages.g.dart';

@JsonSerializable(explicitToJson: true)
class SubscriptionPackages {
  String? packageName;
  String? annualFee;

  SubscriptionPackages({this.packageName, this.annualFee});
  factory SubscriptionPackages.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPackagesFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionPackagesToJson(this);
  //factory SubscriptionPackages.fromJson(Map<String, dynamic> json) =>
  //    _subscriptionPackagesFromJson(json);

  //get subscriptionPackages => null;

  //Map<String, dynamic> toJson() => _subscriptionPackagesJson(this);

  //@override
  //String toString() => 'SubscriptionPackages<$subscriptionPackages>';
}

SubscriptionPackages _subscriptionPackagesFromJson(Map<String, dynamic> json) {
  return SubscriptionPackages(
      packageName: json['packageName'] as String,
      annualFee: json['annualFee'] as String);
}

Map<String, dynamic> _subscriptionPackagesJson(SubscriptionPackages instance) =>
    <String, dynamic>{
      'packageName': instance.packageName,
      'annualFee': instance.annualFee,
    };
