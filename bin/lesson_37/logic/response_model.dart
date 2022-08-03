class JsonCreater {
  String? message;
  int? code;
  JsonCreater({required this.message, required this.code});
  Map<String, dynamic> toJson() {
    return {'code': code, 'message': message};
  }
}

class SignInRespnseModel extends JsonCreater {
  //construktor
  SignInRespnseModel({super.message, super.code});
  //construktor
  SignInRespnseModel.fromJson(Map<String, dynamic> json)
      : super(code: json['code'], message: json['message']);
}

class SignUpReponseModel extends JsonCreater {
  ///construktor
  SignUpReponseModel({super.message, super.code});

  ///construktor
  SignUpReponseModel.fromJson(Map<String, dynamic> json)
      : super(code: json['code'], message: json['message']);
}
