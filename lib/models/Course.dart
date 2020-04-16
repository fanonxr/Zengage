class Course {
  String courseCode;
  String courseTitle;
  String partner;
  String courseType;
  List<String> roles;
  String iconFile;
  Details details;
  List<Classes> classes;

  Course(
      {this.courseCode,
      this.courseTitle,
      this.partner,
      this.courseType,
      this.roles,
      this.iconFile,
      this.details,
      this.classes});

  Course.fromJson(Map<String, dynamic> json) {
    courseCode = json['course code'];
    courseTitle = json['course title'];
    partner = json['partner'];
    courseType = json['course type'];
    roles = json['roles'].cast<String>();
    iconFile = json['icon file'];
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
    return "Course( name: $courseTitle, partner: $partner, about this course: ${details.aboutThisCourse},"
        " what you'll learn: ${details.whatYoullLearn},  course type: $courseType, cost: ${details.cost}, "
        "class hours: ${details.classHours} , efforts: ${details.effort} length: ${details.length} )";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['course code'] = this.courseCode;
    data['course title'] = this.courseTitle;
    data['partner'] = this.partner;
    data['course type'] = this.courseType;
    data['roles'] = this.roles;
    data['icon file'] = this.iconFile;
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
  String cost;
  String classHours;
  String aboutThisCourse;
  String whatYoullLearn;
  String length;
  String effort;
  List<String> reviews;

  Details(
      {this.cost,
      this.classHours,
      this.aboutThisCourse,
      this.whatYoullLearn,
      this.length,
      this.effort,
      this.reviews});

  Details.fromJson(Map<String, dynamic> json) {
    cost = json['cost'];
    classHours = json['class hours'];
    aboutThisCourse = json['about this course'];
    whatYoullLearn = json['what youll learn'];
    length = json['length'];
    effort = json['effort'];
    reviews = json['reviews'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cost'] = this.cost;
    data['class hours'] = this.classHours;
    data['about this course'] = this.aboutThisCourse;
    data['what youll learn'] = this.whatYoullLearn;
    data['length'] = this.length;
    data['effort'] = this.effort;
    data['reviews'] = this.reviews;
    return data;
  }
}

class Classes {
  String startDate;
  String instructor;
  String city;
  String country;

  Classes({this.startDate, this.instructor, this.city, this.country});

  Classes.fromJson(Map<String, dynamic> json) {
    startDate = json['start date'];
    instructor = json['instructor'];
    city = json['city'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start date'] = this.startDate;
    data['instructor'] = this.instructor;
    data['city'] = this.city;
    data['country'] = this.country;
    return data;
  }
}
