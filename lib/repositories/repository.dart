import 'package:api_demo/models/student.dart';

abstract class Repository {
  Future<List<Student>> getStudents();
}