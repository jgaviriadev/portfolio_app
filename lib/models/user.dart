import 'dart:convert';
class User {

  User({
    this.name,
    this.lastname,
    this.jobTitle,
    this.age,
    this.img,
    this.experience,
    this.skill
  });

  String? name;
  String? lastname;
  String? jobTitle;
  int? age;
  String? img;
  List<Experience>? experience;
  List<Skill>? skill;

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  factory User.fromMap(Map<String, dynamic> json) => User(
    name: json["name"],
    lastname: json["lastname"],
    jobTitle: json["jobTitle"],
    age: json["age"],
    img: json["img"],
    experience: List<Experience>.from(json["experience"].map((x) => Experience.fromJson(x))),
    skill: List<Skill>.from(json["skill"].map((x) => Skill.fromJson(x))),
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

class Skill {

  Skill({
    required this.name,
    required this.img
  });

  String name;
  String img;

  factory Skill.fromJson(Map<String, dynamic> json) => Skill(
    name: json["name"],
    img: json["img"],
  );
  
  Map<String, dynamic> toJson() => {
    "name": name,
    "img": img,
  };


}