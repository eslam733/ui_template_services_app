class ServiceTypeModel {
  String id;
  String title;
  bool check = false;
  String icon;
  ServiceTypeModel({required this.title, required this.icon, required this.id});

  factory ServiceTypeModel.fromJson(Map<String, dynamic> json) =>
      ServiceTypeModel(
        id: json['id'],
        title: json['title'],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "icon": icon,
      };
}
