class Users {
  String? user_id;
  String? user_code;
  String? user_type;
  String? user_name;
  String? user_pass;
  String? user_role;

  Users(this.user_id, this.user_code, this.user_type, this.user_name,
      this.user_pass, this.user_role);

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
        json["user_id"] as String,
        json["user_code"] as String,
        json["user_type"] as String,
        json["user_name"] as String,
        json["user_pass"] as String,
        json["user_role"] as String);
  }
}