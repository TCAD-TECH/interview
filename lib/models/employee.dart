class EmployeeModel {
  EmployeeModel({
    required this.id,
    required this.name,
    required this.exp,
    required this.working,
  });

  String id;
  String name;
  String exp;
  bool working;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) => EmployeeModel(
        id: json["id"],
        name: json["name"],
        exp: json["exp"],
        working: json["working"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "exp": exp,
        "working": working,
      };
}
