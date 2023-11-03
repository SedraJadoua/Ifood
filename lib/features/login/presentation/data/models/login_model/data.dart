// ignore_for_file: non_constant_identifier_names

class Data {
  int? id;
  String? FirstName;
  String? LastName;
  String? phone;
  String? password;
  String? email;
  bool? remember_me;
  bool? TermsAndCondition;
  Null emailVerifiedAt;
  String? createdAt;
  String? updatedAt;

  Data({
    required this.id,
    required this.FirstName,
    required this.LastName,
    required this.TermsAndCondition,
    required this.email,
    required this.password,
    required this.phone,
    required this.remember_me,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['FirstName'] = FirstName;
    data['LastName'] = LastName;
    data['phone'] = phone;
    data['TermsAndCondition'] = TermsAndCondition;
    data['remember_me'] = remember_me;
    data['email'] = email;
    data['email_verified_at'] = emailVerifiedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    FirstName = json['FirstName'];
    LastName = json['LastName']?? '';
    phone = json['phone'];
    TermsAndCondition = json['TermsAndCondition'];
    remember_me = json['remember_me'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}
