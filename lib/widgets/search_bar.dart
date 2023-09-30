import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:EdgeInsets.only(left: width*0.005),
      elevation: 4, 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Container(
        height: height*.06,
        width: width*0.9,
       
        child: TextField(
    
    decoration: InputDecoration(
    
      prefixIcon: Icon(Icons.search), 
      hintText: '''Search for NAAI....''', 
      hintStyle: GoogleFonts.poppins(),
      border: InputBorder.none, 
    ),
   
        ),
      ),
    );
  }
}