

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naai/screens/dsahboard.dart';

class PostCard extends StatelessWidget {
  late String name;
  late String img;
  late String price;
  late String address;
  PostCard({required this.name,required this.img,required this.price,required this.address});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap:(){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DashboardPage(
              Name: name,
              rating: 4.5,
              price: price,
              address: address,
              imageUrl: img,
            ),
          ),
        );
          },
          child: Card(
            margin: const EdgeInsets.all(16.0),
            elevation: 16,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Image.network(
                  img,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                ),
               ],
              
            ),
          ),
        ),
         Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
               
            
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                       Padding(
                         padding: const EdgeInsets.only(right: 8),
                         child: Text(
                         address,
                         style: GoogleFonts.poppins(
                           color: Colors.black,
                           fontSize: 14.0,
                           fontWeight: FontWeight.bold
                         ),
                                            ),
                       ),
     
                       
                  ],
                ),

                const SizedBox(height: 4.0),

                // Rating
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18.0,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18.0,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18.0,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18.0,
                    ),
                    const Icon(
                      Icons.star_half,
                      color: Colors.yellow,
                      size: 18.0,
                    ),
                    const SizedBox(width: 4.0),
                    Text('4.5', style: GoogleFonts.poppins(fontSize: 14.0)),
                  ],
                ),

                const SizedBox(height: 4.0),

                // Price
                Text(
                 '\$$price',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
         
      ],
    );
  }
}
