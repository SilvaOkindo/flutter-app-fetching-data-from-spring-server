import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentTile extends StatelessWidget {
  final int? id;
  final String? name;
  final String? email;
  const StudentTile({
    Key? key,
    required this.id,
    required this.name,
    required this.email
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 40,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            id.toString(),
            style: GoogleFonts.lato(fontSize: 16),
          ),
          Text(
            name!,
            style: GoogleFonts.lato(fontSize: 18),
          ),
          Text(
            email!,
            style: GoogleFonts.lato(fontSize: 18),
          )
        ],
      ),
    );
  }
}
