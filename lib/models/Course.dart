class Course {
  String courseCode;
  String courseTitle;
  String partner;
  String courseType;
  List<String> roles;
  String iconFile;
  Details details;
  List<Classes> classes;
  String headerImage;

  Course(
      {this.courseCode,
      this.courseTitle,
      this.partner,
      this.courseType,
      this.roles,
      this.iconFile,
      this.details,
      this.classes,
      this.headerImage});

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
    headerImage = json['headerImage'];
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
    data['headerImage'] = this.headerImage;
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
  List<Reviews> reviews;

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
    if (json['reviews'] != null) {
      reviews = new List<Reviews>();
      json['reviews'].forEach((v) {
        reviews.add(new Reviews.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cost'] = this.cost;
    data['class hours'] = this.classHours;
    data['about this course'] = this.aboutThisCourse;
    data['what youll learn'] = this.whatYoullLearn;
    data['length'] = this.length;
    data['effort'] = this.effort;
    if (this.reviews != null) {
      data['reviews'] = this.reviews.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Reviews {
  String reviewText;
  String reviewImage;

  Reviews({this.reviewText, this.reviewImage});

  Reviews.fromJson(Map<String, dynamic> json) {
    reviewText = json['reviewText'];
    reviewImage = json['reviewImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reviewText'] = this.reviewText;
    data['reviewImage'] = this.reviewImage;
    return data;
  }
}

class Classes {
  String startDate;
  String endDate;
  String instructor;
  String city;
  String country;

  Classes(
      {this.startDate, this.endDate, this.instructor, this.city, this.country});

  Classes.fromJson(Map<String, dynamic> json) {
    startDate = json['start date'];
    endDate = json['end date'];
    instructor = json['instructor'];
    city = json['city'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start date'] = this.startDate;
    data['end date'] = this.endDate;
    data['instructor'] = this.instructor;
    data['city'] = this.city;
    data['country'] = this.country;
    return data;
  }
}
