// Created by Adipt on 28/01/2022

import 'package:json_annotation/json_annotation.dart';

part 'GstProfile.g.dart';

@JsonSerializable()
class GstProfile {
  final String name;
  final String status;
  final String address;
  final String taxPayerType;
  final String businessType;
  final String dateOfRegistration;

  GstProfile({
    required this.name,
    required this.status,
    required this.address,
    required this.taxPayerType,
    required this.businessType,
    required this.dateOfRegistration,
  });

  factory GstProfile.fromJson(Map<String, dynamic> json) => _$GstProfileFromJson(json);

  Map<String, dynamic> toJson() => _$GstProfileToJson(this);
}
