class LoginRegisterModel {
  String text;
  String screen;

  LoginRegisterModel({
    required this.text,
    required this.screen,
  });

  factory LoginRegisterModel.fromJson(Map<String, dynamic> json) => LoginRegisterModel(
    text: json["text"],
    screen: json["screen"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "screen": screen,
  };
}