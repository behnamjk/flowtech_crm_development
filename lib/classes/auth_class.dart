class AuthData {
   String? authToken;
   String? username;
   String? password;

  AuthData({
    this.authToken,
    this.username,
    this.password,
  });

  AuthData copyWith({
    String? authToken,
    String? username,
    String? password,
  }) =>
      AuthData(
        authToken: authToken ?? this.authToken,
        username: username ?? this.username,
        password: password ?? this.password,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is 
 AuthData &&
          runtimeType == other.runtimeType &&
          authToken == other.authToken &&
          username == other.username &&
          password == other.password;

  @override
  int get hashCode =>
      authToken.hashCode ^ username.hashCode ^ password.hashCode;
}