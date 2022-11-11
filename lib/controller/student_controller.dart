import 'package:api_demo/models/student.dart';

import '../repositories/repository.dart';

class StudentController {
  final Repository _repository;

  StudentController(this._repository);
  Future<List<Student>> fetchStudents() async{
    return _repository.getStudents();
  }
}
