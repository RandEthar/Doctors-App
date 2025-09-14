class AuthResponse {
  final String message;
  final LoginData data;
  final bool status;
  final int code;

  AuthResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      message: json['message'] as String,
      data: LoginData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool,
      code: json['code'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'data': data.toJson(),
      'status': status,
      'code': code,
    };
  }

  @override
  String toString() {
    return 'LoginResponse(message: $message, data: $data, status: $status, code: $code)';
  }
}

class LoginData {
  final String token;
  final String username;

  LoginData({
    required this.token,
    required this.username,
  });

  factory LoginData.fromJson(Map<String, dynamic> json) {
    return LoginData(
      token: json['token'] as String,
      username: json['username'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'username': username,
    };
  }

  @override
  String toString() {
    return 'LoginData(token: $token, username: $username)';
  }
}
