import 'dart:convert';
class User {

  User({
    this.name,
    this.lastname,
    this.jobTitle,
    this.age,
    this.img,
    this.experience,
    this.skill,
    this.studies
  });

  String? name;
  String? lastname;
  String? jobTitle;
  int? age;
  String? img;
  List<Experience>? experience;
  List<Skill>? skill;
  List<Studies>? studies;

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  factory User.fromMap(Map<String, dynamic> json) => User(
    name: json["name"],
    lastname: json["lastname"],
    jobTitle: json["jobTitle"],
    age: json["age"],
    img: json["img"],
    experience: List<Experience>.from(json["experience"].map((x) => Experience.fromJson(x))),
    skill: List<Skill>.from(json["skill"].map((x) => Skill.fromJson(x))),
    studies: List<Studies>.from(json["studies"].map((x) => Studies.fromJson(x))),
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

class Studies {

  Studies({
    required this.name,
    required this.university,
    required this.date,
    required this.level
  });

  String name;
  String university;
  String date;
  String level;

  factory Studies.fromJson(Map<String, dynamic> json) => Studies(
    name: json["name"],
    university: json["university"],
    date: json["date"],
    level: json["level"]
  );
  
  Map<String, dynamic> toJson() => {
    "name": name,
    "university": university,
    "date" : date,
    "level" : level
  };
}

class Project {
  Project({
    required this.name,
    required this.platform,
    required this.desc,
    required this.technologies,
    required this.img,
  });

  String name;
  String platform;
  String desc;
  String technologies;
  List<Img> img;

  factory Project.fromJson(Map<String, dynamic> json) => Project(
    name: json["name"],
    platform: json["platform"],
    desc: json["desc"],
    technologies: json["technologies"],
    img: List<Img>.from(json["img"].map((x) => Img.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "platform": platform,
    "desc": desc,
    "technologies": technologies,
    "img": List<dynamic>.from(img.map((x) => x.toJson())),
  };
}

class Img {
  Img({
    required this.url,
  });

  String url;

  factory Img.fromJson(Map<String, dynamic> json) => Img(
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
  };
}