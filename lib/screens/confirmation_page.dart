import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';






class OrderConfirmationPage extends StatelessWidget {
   String getCurrentTime() {
    final now = DateTime.now();
    final formattedTime = DateFormat.Hms().format(now);
    return formattedTime;
  }
 
  late String img;
  late String name;
  late String price;
  late String arrival;

  OrderConfirmationPage({required this.img,required this.name,required this.price,required this.arrival});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 100.0,
            ),
            const SizedBox(height: 16.0),
            const Text(
              ' barber booked successfully!',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              name, 
              style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
                 '\$$price',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.green,
                  ),
                ),
            const SizedBox(height: 20),
            Text(
             arrival,
              style: GoogleFonts.poppins(fontSize: 24),
            ),
            const SizedBox(height: 20),
          
            const Text(
              'Order Placed at:',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              getCurrentTime(), 
              style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}



