class ServicesDetailsModel {
  String title;
  List<String> details;

  ServicesDetailsModel({required this.details, required this.title});

  factory ServicesDetailsModel.fromJson(Map<String, dynamic> json) =>
      ServicesDetailsModel(
        title: json['title'],
        details: List<String>.from(json["details"].map((e) => e)),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "details": details,
      };
}
