import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';

//Update with colors of your choice for dp background gradient
Color kGradient1 = Colors.purple;
Color kGradient2 = Colors.pinkAccent;

String imagePath = "images/profile.jpeg";

//String data to modify
String name = "Facundo Imfeld";
String username = "flutterroles";

//Link to resume on Google Drive
String resumeLink =
    "https://drive.google.com/file/d/1aWyhRwxtxHwB1jJEjh0WuFSrx-LEvaJv/view?usp=sharing";

//Contact Email
String contactEmail = "imfeld59@gmail.com";

String aboutWorkExperience = '''
I have two years of experience with Flutter
''';

String aboutMeSummary = '''
I am a advanced student of Engineering System and am a person who is passionate about learn new things within world of technology. I like it set goals and objectives improve myself day by day, I learn from my mistakes to be able always develop from one better form on the task requires me to always be supportive and helping my companions.
''';

String courses = "2020-2020 Coursera, Iniciación y Planificación de Proyectos";
String course1 =
    "2020-2020 Coursera, Network Security & Database Vulnerabilites";
String course2 =
    "2020-2020 Coursera, Programando con Java para aplicaciones Android";

String location = "Resistencia, Argentina";
String website = "adityathakur.in";
String portfolio = "adityathakurxd";
String email = "imfeld59@gmail.com";

List<Project> projectList = [
  Project(
      name: "TodoApp",
      description:
          "A simple to-do list app made with GetX as a status manager.",
      link: "https://github.com/adityathakurxd/shades",
      linkPlaystore: ''),
  Project(
      name: "MiUTN FRRe",
      description:
          "My first application developed in Flutter. It is the replication of the academic management system of my university with other functions that I added on my own. Connected with Firebase and available on the PlayStore",
      link: "https://github.com/adityathakurxd/fiasco",
      linkPlaystore:
          'https://play.google.com/store/apps/details?id=com.HopeTechnology.MiUTNFRRe'),
  Project(
      name: "Fiasco",
      description:
          "Fiasco is one stop solution to help you manage Family expenses in one place!",
      link: "https://github.com/adityathakurxd/fiasco",
      linkPlaystore: ''),
  Project(
      name: "Flutter Portfolio",
      description: "A template for Portfolio",
      link: "https://github.com/adityathakurxd/flutter-portfolio",
      linkPlaystore: '')
];
