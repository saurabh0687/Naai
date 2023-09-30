import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naai/screens/confirmation_page.dart';
import 'package:naai/widgets/button.dart';

class DashboardPage extends StatelessWidget {
  final String Name;
  final double rating;
  final String price;
  final String address;
  final String imageUrl;

  DashboardPage({
    required this.Name,
    required this.rating,
    required this.price,
    required this.address,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(Name,style:GoogleFonts.poppins(fontWeight: FontWeight.bold),),
        centerTitle: true,
       actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.call),
        ),
         Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.notifications),
        ),

       ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Saloon Name: $Name',
              style: GoogleFonts.poppins(fontSize: 18.0,fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Rating: $rating',
              style: GoogleFonts.poppins(fontSize: 18.0,fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Price: \$$price',
              style: GoogleFonts.poppins(fontSize: 18.0,fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8.0),
            Text(
              address,
              style: GoogleFonts.poppins(fontSize: 18.0,fontWeight: FontWeight.w600),
            ),
             const SizedBox(height: 8.0),
           Container(
            width: MediaQuery.of(context).size.width*0.95,
             child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod purus eget tortor egestas.',
             style: GoogleFonts.poppins(fontSize: 16.0,wordSpacing: 1,fontWeight: FontWeight.w400,color: Color.fromARGB(255, 136, 168, 185)),
             ),
           ),
           const SizedBox(
            height: 20,
           ),
           StylishButton(text:"Book",onPressed: () {
             
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderConfirmationPage(img: imageUrl, name: Name, price: price, arrival: address),
                ),
              );
            },)
          ],
        ),
      ),
    );
  }
}
