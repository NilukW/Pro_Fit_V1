// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscriptionPackages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionPackages _$SubscriptionPackagesFromJson(Map<String, dynamic> json) {
  return SubscriptionPackages(
    packageName: json['packageName'] as String?,
    annualFee: json['annualFee'] as String?,
  );
}

Map<String, dynamic> _$SubscriptionPackagesToJson(
        SubscriptionPackages instance) =>
    <String, dynamic>{
      'packageName': instance.packageName,
      'annualFee': instance.annualFee,
    };
