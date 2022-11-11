import 'package:api_demo/models/student.dart';
import 'package:api_demo/repositories/repository_impl.dart';
import 'package:api_demo/screens/student_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/student_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StudentController studentController = StudentController(RepositoryImpl());
    studentController.fetchStudents();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Students',
          style: GoogleFonts.lato(fontSize: 20),
        ),
        elevation: 0.0,
      ),
      body: FutureBuilder<List<Student>>(
        future: studentController.fetchStudents(),
        builder: (_, snapshot) {
         if(snapshot.connectionState == ConnectionState.done) {
           return ListView.separated(
               itemBuilder: (_, index) {
                 var students = snapshot.data?[index];
                 return StudentTile(
                     id: students?.id,
                     name: students?.name,
                     email: students?.email
                 );
               },
               separatorBuilder: (context, index) {
                 return const Divider(height: 4, color: Colors.grey,);
               },
               itemCount: snapshot.data?.length ?? 0
           );
         } else if(snapshot.connectionState == ConnectionState.waiting) {
           return const Center(child: CircularProgressIndicator());
         } else {
           return Center(child: Text('Error', style: GoogleFonts.lato(fontSize: 28),));
         }
        },
      )
    );
  }
}
