class ListViewModel {
  String text;
  String screen;

  ListViewModel({
    required this.text,
    required this.screen,
  });

  factory ListViewModel.fromJson(Map<String, dynamic> json) => ListViewModel(
    text: json["text"],
    screen: json["screen"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "screen": screen,
  };
}