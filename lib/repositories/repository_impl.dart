import 'dart:convert';

import 'package:api_demo/models/student.dart';
import 'package:api_demo/repositories/repository.dart';
import 'package:http/http.dart' as http;

class RepositoryImpl extends Repository {
  @override
  Future<List<Student>> getStudents() async{
   List<Student> students = [];
   var BASEURL = 'http://192.168.43.51:8080/api/v1';
   var url = Uri.parse('$BASEURL/students');
   var response = await http.get(url);
   print('Status code:  ${response.statusCode}');
   var body = json.decode(response.body);
   // parse
    for(var i = 0; i < body.length; i++) {
      students.add(Student.fromJson(body[i]));
    }
    return students;
  }

}