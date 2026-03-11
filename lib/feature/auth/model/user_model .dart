class LoginResponse {
  final bool success;
  final int statusCode;
  final String message;
  final UserData data;

  LoginResponse({
    required this.success,
    required this.statusCode,
    required this.message,
    required this.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      success: json['success'] ?? false,
      statusCode: json['statusCode'] ?? 0,
      message: json['message'] ?? '',
      data: UserData.fromJson(json['data']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'statusCode': statusCode,
      'message': message,
      'data': data.toJson(),
    };
  }
}

class UserData {
  final String id;
  final String name;
  final String email;
  final String userName;
  final String role;
  final String accessToken;
  final bool dailyGoal;

  UserData({
    required this.id,
    required this.name,
    required this.email,
    required this.userName,
    required this.role,
    required this.accessToken,
    required this.dailyGoal,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      userName: json['userName'] ?? '',
      role: json['role'] ?? '',
      accessToken: json['accessToken'] ?? '',
      dailyGoal: json['dailyGoal'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'userName': userName,
      'role': role,
      'accessToken': accessToken,
      'dailyGoal': dailyGoal,
    };
  }
}
