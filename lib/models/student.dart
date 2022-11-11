class Student {
  int? id;
  String? name;
  String? email;
  String? dob;
  int? age;

  Student({this.id, this.name, this.email, this.dob, this.age});

  Student.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    dob = json['dob'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['dob'] = this.dob;
    data['age'] = this.age;
    return data;
  }
}
