import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naai/constants/constant.dart';

class IconList extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: iconData.map((icon) {
          return IconCard(iconData: icon);
        }).toList(),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  final Map<String, dynamic> iconData;

  IconCard({required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            iconData['icon'],
            size: 48.0,
          ),
          SizedBox(height: 10,),
          Text(iconData['name'],style: GoogleFonts.poppins(),),
        ],
      ),
    );
  }
}
