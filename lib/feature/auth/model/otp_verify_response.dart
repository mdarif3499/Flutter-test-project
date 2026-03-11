import 'dart:convert';

class OtpVerifyResponse {
  final bool success;
  final int statusCode;
  final String message;
  final OtpData? data;

  OtpVerifyResponse({
    required this.success,
    required this.statusCode,
    required this.message,
    this.data,
  });

  /// Create from Map
  factory OtpVerifyResponse.fromMap(Map<String, dynamic> map) {
    return OtpVerifyResponse(
      success: map['success'] ?? false,
      statusCode: map['statusCode'] ?? 0,
      message: map['message'] ?? '',
      data: map['data'] != null ? OtpData.fromMap(map['data']) : null,
    );
  }

  /// Create from JSON String
  factory OtpVerifyResponse.fromJson(String source) =>
      OtpVerifyResponse.fromMap(json.decode(source));

  /// Convert to Map
  Map<String, dynamic> toMap() {
    return {
      'success': success,
      'statusCode': statusCode,
      'message': message,
      'data': data?.toMap(),
    };
  }

  /// Convert to JSON String
  String toJson() => json.encode(toMap());

  /// Clone with updated values
  OtpVerifyResponse copyWith({
    bool? success,
    int? statusCode,
    String? message,
    OtpData? data,
  }) {
    return OtpVerifyResponse(
      success: success ?? this.success,
      statusCode: statusCode ?? this.statusCode,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}

class OtpData {
  final String message;
  final String token;

  OtpData({
    required this.message,
    required this.token,
  });

  factory OtpData.fromMap(Map<String, dynamic> map) {
    return OtpData(
      message: map['message'] ?? '',
      token: map['token'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'token': token,
    };
  }

  factory OtpData.fromJson(String source) =>
      OtpData.fromMap(json.decode(source));

  String toJson() => json.encode(toMap());

  OtpData copyWith({
    String? message,
    String? token,
  }) {
    return OtpData(
      message: message ?? this.message,
      token: token ?? this.token,
    );
  }
}
