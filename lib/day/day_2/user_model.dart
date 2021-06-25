import 'dart:convert';

import 'package:flutter/foundation.dart';

class User {
  String name;
  String about;
  int steps;
  int sessions;
  int calBurnt;
  List<int> string;
  User({
    required this.name,
    required this.about,
    required this.steps,
    required this.sessions,
    required this.calBurnt,
    required this.string,
  });

  User copyWith({
    String? name,
    String? about,
    int? steps,
    int? sessions,
    int? calBurnt,
    List<int>? string,
  }) {
    return User(
      name: name ?? this.name,
      about: about ?? this.about,
      steps: steps ?? this.steps,
      sessions: sessions ?? this.sessions,
      calBurnt: calBurnt ?? this.calBurnt,
      string: string ?? this.string,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'about': about,
      'steps': steps,
      'sessions': sessions,
      'calBurnt': calBurnt,
      'string': string,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      about: map['about'],
      steps: map['steps'],
      sessions: map['sessions'],
      calBurnt: map['calBurnt'],
      string: List<int>.from(map['string']),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(name: $name, about: $about, steps: $steps, sessions: $sessions, calBurnt: $calBurnt, string: $string)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is User &&
      other.name == name &&
      other.about == about &&
      other.steps == steps &&
      other.sessions == sessions &&
      other.calBurnt == calBurnt &&
      listEquals(other.string, string);
  }

  @override
  int get hashCode {
    return name.hashCode ^
      about.hashCode ^
      steps.hashCode ^
      sessions.hashCode ^
      calBurnt.hashCode ^
      string.hashCode;
  }
}
//  class User {
//   String name;
//   String about;
//   int steps;
//   int sessions;
//   int calBurnt;
//   List<Streak>? streak;

//   User(
//       {this.name="",
//       this.about="",
//       this.steps=0,
//       this.sessions=0,
//       this.calBurnt=0,
//       this.streak
//       });

//   User.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     about = json['about'];
//     steps = json['steps'];
//     sessions = json['sessions'];
//     calBurnt = json['calBurnt'];
//     if (json['streak'] != null) {
//       streak = new List<Streak>();
//       json['streak'].forEach((v) {
//         streak.add(new Streak.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['about'] = this.about;
//     data['steps'] = this.steps;
//     data['sessions'] = this.sessions;
//     data['calBurnt'] = this.calBurnt;
//     if (this.streak != null) {
//       data['streak'] = this.streak.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Streak {
//   String date;
//   int steps;
//   int sessions;
//   int calBurnt;

//   Streak({required this.date, this.steps =0, this.sessions=0, this.calBurnt=0});

//   Streak.fromJson(Map<String, dynamic> json) {
//     date = json['date'];
//     steps = json['steps'];
//     sessions = json['sessions'];
//     calBurnt = json['calBurnt'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['date'] = this.date;
//     data['steps'] = this.steps;
//     data['sessions'] = this.sessions;
//     data['calBurnt'] = this.calBurnt;
//     return data;
//   }
// }