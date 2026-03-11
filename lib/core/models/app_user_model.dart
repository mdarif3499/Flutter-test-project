// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:ijarahub/core/models/app_user_survey_model.dart';
import '../enums/language_local_enums.dart';
import '../enums/user_roles_enum.dart';

class AppUser {
  final String uid;
  final String firstName;
  final String lastName;
  final String? email;
  final String? phoneNumber;
  final List<UserRolesEnum> userRoles;
  final LanguageLocalEnums local;
  final List<String> properties;
  final AppUserSurveyModel? survey;
  final DateTime? emailVerifiedAt;
  final DateTime? phoneVerifiedAt;

  AppUser({
    required this.uid,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.userRoles,
    required this.local,
    required this.properties,
    required this.survey,
    this.emailVerifiedAt,
    this.phoneVerifiedAt,
  });

  factory AppUser.fromMap(Map<String, dynamic> map) {
    return AppUser(
      uid: map['id'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      email: map['email'] as String?,
      phoneNumber: map['phone'] as String?,
      userRoles:
          (map['roles'] != null && (map['roles'] as List<dynamic>).isNotEmpty)
          ? List<UserRolesEnum>.from(
              (map['roles'] as List<dynamic>).map<UserRolesEnum>(
                (x) => UserRolesEnum.fromString(x as String),
              ),
            )
          : [UserRolesEnum.fromString("")],
      local: map['local'] != null
          ? LanguageLocalEnums.fromString(map['local'] as String)
          : LanguageLocalEnums.defaultLan,
      properties: map['properties'] != null
          ? List<String>.from(map['properties'] as List<dynamic>)
          : [],
      survey: map['survey'] != null
          ? AppUserSurveyModel.fromMap(map['survey'] as Map<String, dynamic>)
          : null,
      emailVerifiedAt: map['emailVerifiedAt'] != null
          ? DateTime.parse(map['emailVerifiedAt'] as String)
          : null,
      phoneVerifiedAt: map['phoneVerifiedAt'] != null
          ? DateTime.parse(map['phoneVerifiedAt'] as String)
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'phoneNumber': phoneNumber,
      'userRoles': userRoles.map((x) => x.name).toList(),
      'local': "${local.locale.languageCode}-${local.locale.countryCode}",
      'properties': properties,
      'survey': survey?.toMap(),
    };
  }

  String toJson() => json.encode(toMap());
  factory AppUser.fromJson(String source) =>
      AppUser.fromMap(json.decode(source) as Map<String, dynamic>);
  @override
  String toString() {
    return 'AppUser(uid: $uid, firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, userRoles: $userRoles, survey: $survey, local: $local, properties: $properties, emailVerifiedAt: $emailVerifiedAt, phoneVerifiedAt: $phoneVerifiedAt)';
  }

  @override
  bool operator ==(covariant AppUser other) {
    if (identical(this, other)) return true;

    return other.uid == uid &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.email == email &&
        other.survey == survey &&
        other.phoneNumber == phoneNumber &&
        other.local == local &&
        other.emailVerifiedAt == emailVerifiedAt &&
        other.phoneVerifiedAt == phoneVerifiedAt &&
        listEquals(other.properties, properties) &&
        listEquals(other.userRoles, userRoles);
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        email.hashCode ^
        phoneNumber.hashCode ^
        survey.hashCode ^
        local.hashCode ^
        properties.hashCode ^
        emailVerifiedAt.hashCode ^
        phoneVerifiedAt.hashCode ^
        userRoles.hashCode;
  }

  AppUser copyWith({
    String? uid,
    String? firstName,
    String? lastName,
    String? email,
    String? phoneNumber,
    List<UserRolesEnum>? userRoles,
    LanguageLocalEnums? local,
    List<String>? properties,
    AppUserSurveyModel? survey,
    DateTime? emailVerifiedAt,
    DateTime? phoneVerifiedAt,
  }) {
    return AppUser(
      uid: uid ?? this.uid,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      userRoles: userRoles ?? this.userRoles,
      local: local ?? this.local,
      properties: properties ?? this.properties,
      survey: survey ?? this.survey,
      emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
      phoneVerifiedAt: phoneVerifiedAt ?? this.phoneVerifiedAt,
    );
  }
}
