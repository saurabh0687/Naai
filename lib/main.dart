// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naai/constants/constant.dart';
import 'package:naai/screens/login_signup.dart';
import 'package:naai/widgets/employee_card.dart';
import 'package:naai/widgets/list.dart';
import 'package:naai/widgets/search_bar.dart';
import 'package:naai/widgets/search_list.dart';
import 'package:naai/widgets/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      home:LoginScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
      leading: Icon(Icons.menu),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.location_pin),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person_2_rounded),
          )
        ],
        title: Text("Welcome",style: GoogleFonts.pacifico(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBox(width: width, height: height),
            SizedBox(
              height: height * 0.03,
            ),
            IconList(),
               SizedBox(height: height*0.05,),
             Column(
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Text("Beat the HairCut",style: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),),
          Divider(
          indent: width*0.2,
          endIndent: width*0.2,
          thickness: 1,
          color: Colors.black,
        ),
               ],
             ),

           
            CarouselSliderPage(),
            SizedBox(height: height*0.05,),
            Text("Available Salons",style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
            PostCard(
              name: "Unique Saloon",
              img:
                  "https://t4.ftcdn.net/jpg/01/91/68/39/360_F_191683902_IAcEOTTtnSdJkgkcuwT4oGnHewKgLDkU.jpg",
              price: '50',
              address: "10 min away from you",
            ),
          
            PostCard(
                name: "UniSex Barber",
                img:
                    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/hair-salon-logo%2C-berber-shop-logo-%282%29-design-template-f3e545ef9d52cb9e7ae3417ce224e7cc_screen.jpg?ts=1670083891",
                price: '49.90',
                address: "8 min aways from you"),
            PostCard(
                name: "Beauty Hairs",
                img:
                    "https://img.freepik.com/premium-vector/hair-salon-logo-vector_624650-21.jpg?w=2000",
                price: "69.99",
                address: "6 min aways from you"),
                SizedBox(
                  height: 25,
                ),
               // BarbersList(),
               Text("Up to 50% off",style:GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black
               ),),
               Container(
              //  color: Colors.black,
                height: height/4,
                width: width,
                child: BarbersList(),
               ),
              
          ],
        ),
      ),
    );
  }
}
