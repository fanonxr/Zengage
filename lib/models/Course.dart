class Course {
  String courseName;
  String description;

  /// Course learning outcome description
  String learningOutcome;

  /// Course partner name
  String partnerName;
  String courseType;
  Details details;
  List<Classes> classes;

  Course(
      {this.courseName,
      this.description,
      this.learningOutcome,
      this.partnerName,
      this.courseType,
      this.details,
      this.classes});

  Course.fromJson(Map<String, dynamic> json) {
    /*return Course(
        courseName: json['course'] as String,
        description: json['description'] != null ? json['description'] : "",
        learningOutcome:
            json['learningOutcome'] != null ? json['learningOutcome'] : "",
        partnerName: json['partner'],
        courseType: json['course type'],
        details: json['details'] != null
            ? new Details.fromJson(json['details'])
            : null,
        classes: null);*/
    courseName = json['course'];
    description = json['description'];
    learningOutcome = json['learningOutcome'];
    partnerName = json['partner'];
    courseType = json['course type'];
    details =
        json['details'] != null ? new Details.fromJson(json['details']) : null;
    if (json['classes'] != null) {
      classes = new List<Classes>();
      json['classes'].forEach((v) {
        classes.add(new Classes.fromJson(v));
      });
    }
  }

  @override
  String toString() {
    return "Course( name: $courseName, partner: $partnerName, description: $description,"
        " learningOutcome: $learningOutcome,  course type: $courseType, cost: ${details.cost}, class hours: ${details.classHours} )";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['course'] = this.courseName;
    data['description'] = this.description;
    data['learningOutcome'] = this.learningOutcome;
    data['partner'] = this.partnerName;
    data['course type'] = this.courseType;
    if (this.details != null) {
      data['details'] = this.details.toJson();
    }
    if (this.classes != null) {
      data['classes'] = this.classes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Details {
  int cost;
  int classHours;
  String efforts;

  Details({this.cost, this.classHours, this.efforts});

  Details.fromJson(Map<String, dynamic> json) {
    cost = json['cost'];
    classHours = json['class hours'];
    efforts = json['efforts'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cost'] = this.cost;
    data['class hours'] = this.classHours;
    data['efforts'] = this.efforts;
    return data;
  }
}

class Classes {
  String startDate;
  String instructorName;
  String city;
  String country;

  Classes({this.startDate, this.instructorName, this.city, this.country});

  Classes.fromJson(Map<String, dynamic> json) {
    startDate = json['start date'];
    instructorName = json['instructor'];
    city = json['city'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start date'] = this.startDate;
    data['instructor'] = this.instructorName;
    data['city'] = this.city;
    data['country'] = this.country;
    return data;
  }
}
