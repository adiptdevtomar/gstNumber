// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GstProfile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GstProfile _$GstProfileFromJson(Map<String, dynamic> json) => GstProfile(
      name: json['Name'] as String,
      status: json['Status'] as String,
      address: json['Address'] as String,
      taxPayerType: json['TaxPayerType'] as String,
      businessType: json['BusinessType'] as String,
      dateOfRegistration: json['DateOfRegistration'] as String,
    );

Map<String, dynamic> _$GstProfileToJson(GstProfile instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Status': instance.status,
      'Address': instance.address,
      'TaxPayerType': instance.taxPayerType,
      'BusinessType': instance.businessType,
      'DateOfRegistration': instance.dateOfRegistration,
    };
