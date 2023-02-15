import 'dart:convert';
class User {

  User({
    this.name,
    this.lastname,
    this.jobTitle,
    this.age,
    this.img,
    this.experience,
  });

  String? name;
  String? lastname;
  String? jobTitle;
  int? age;
  String? img;
  List<Experience>? experience;

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  factory User.fromMap(Map<String, dynamic> json) => User(
    name: json["name"],
    lastname: json["lastname"],
    jobTitle: json["jobTitle"],
    age: json["age"],
    img: json["img"],
    experience: List<Experience>.from(json["experience"].map((x) => Experience.fromJson(x))),
  );
}

class Experience {

  Experience({
    required this.company,
    required this.country,
    required this.beginning,
    required this.finished,
    required this.jobTitle,
    required this.desc,
  });

  String company;
  String country;
  String beginning;
  String finished;
  String jobTitle;
  String desc;

  factory Experience.fromJson(Map<String, dynamic> json) => Experience(
    company: json["company"],
    country: json["country"],
    beginning: json["beginning"],
    finished: json["finished"],
    jobTitle: json["job_title"],
    desc: json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "company": company,
    "country": country,
    "beginning": beginning,
    "finished": finished,
    "job_title": jobTitle,
    "desc": desc,
  };
}