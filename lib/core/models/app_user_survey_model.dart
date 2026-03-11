// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:flutter/foundation.dart';

class AppUserSurveyModel {
  final int? propertyCount;
  final int? unitCount;
  final String? rentCollection;

  AppUserSurveyModel({this.propertyCount, this.unitCount, this.rentCollection});

  factory AppUserSurveyModel.fromMap(Map<String, dynamic> map) {
    return AppUserSurveyModel(
      propertyCount: map['propertyCount'] != null
          ? map['propertyCount'] as int
          : null,
      unitCount: map['unitCount'] != null ? map['unitCount'] as int : null,
      rentCollection: map['rentCollection'] != null
          ? map['rentCollection'] as String
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    final returnMap = <String, dynamic>{};

    if (propertyCount != null) {
      returnMap['propertyCount'] = propertyCount;
    }
    if (unitCount != null) {
      returnMap['unitCount'] = unitCount;
    }

    if (rentCollection != null) {
      returnMap['rentCollection'] = rentCollection;
      debugPrint("rentCollection in toMap in Model: $rentCollection");
    }

    return returnMap;
  }

  String toJson() => json.encode(toMap());
  factory AppUserSurveyModel.fromJson(String source) =>
      AppUserSurveyModel.fromMap(json.decode(source) as Map<String, dynamic>);
  @override
  String toString() {
    return 'AppUserSurveyModel(propertyCount: $propertyCount, unitCount: $unitCount, rentCollection: $rentCollection)';
  }

  @override
  bool operator ==(covariant AppUserSurveyModel other) {
    if (identical(this, other)) return true;

    return other.propertyCount == propertyCount &&
        other.unitCount == unitCount &&
        other.rentCollection == rentCollection;
  }

  @override
  int get hashCode {
    return propertyCount.hashCode ^
        unitCount.hashCode ^
        rentCollection.hashCode;
  }

  AppUserSurveyModel copyWith({
    int? propertyCount,
    int? unitCount,
    String? rentCollection,
  }) {
    return AppUserSurveyModel(
      propertyCount: propertyCount ?? this.propertyCount,
      unitCount: unitCount ?? this.unitCount,
      rentCollection: rentCollection ?? this.rentCollection,
    );
  }
}
