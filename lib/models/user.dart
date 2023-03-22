import 'dart:convert';
class User {

  User({
    this.name,
    this.lastname,
    this.jobTitle,
    this.age,
    this.img,
    this.experiences,
    this.skills,
    this.studies,
    this.projects
  });

  String? name;
  String? lastname;
  String? jobTitle;
  int? age;
  String? img;
  List<Experience>? experiences;
  List<Skill>? skills;
  List<Study>? studies;
  List<Project>? projects;

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  factory User.fromMap(Map<String, dynamic> json) => User(
    name: json["name"],
    lastname: json["lastname"],
    jobTitle: json["jobTitle"],
    age: json["age"],
    img: json["img"],
    experiences: List<Experience>.from(json["experiences"].map((x) => Experience.fromJson(x))),
    skills: List<Skill>.from(json["skills"].map((x) => Skill.fromJson(x))),
    studies: List<Study>.from(json["studies"].map((x) => Study.fromJson(x))),
    projects: List<Project>.from(json["projects"].map((x) => Project.fromJson(x))),
  );
}

class Experience {

  Experience({
    required this.company,
    required this.location,
    required this.beginning,
    required this.finished,
    required this.jobTitle,
    required this.desc,
  });

  String company;
  String location;
  String beginning;
  String finished;
  String jobTitle;
  String desc;

  factory Experience.fromJson(Map<String, dynamic> json) => Experience(
    company: json["company"],
    location: json["location"],
    beginning: json["beginning"],
    finished: json["finished"],
    jobTitle: json["job_title"],
    desc: json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "company": company,
    "location": location,
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

class Study {

  Study({
    required this.name,
    required this.university,
    required this.date,
    required this.level,
    required this.location
  });

  String name;
  String university;
  String date;
  String level;
  String location;

  factory Study.fromJson(Map<String, dynamic> json) => Study(
    name: json["name"],
    university: json["university"],
    date: json["date"],
    level: json["level"],
    location: json["location"]
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