import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naai/main.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // title: Text("Login",style: GoogleFonts.poppins(
        //   fontSize: 36,
        //   fontWeight: FontWeight.bold,
        //   color: Colors.black
        // ),),
        // centerTitle: true,
      ),
     
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(
                  'https://thumbs.dreamstime.com/b/men-barbershop-hairstylist-banner-logo-badge-vector-design-template-men-barbershop-hairstylist-banner-logo-badge-vector-design-139643468.jpg', 
                  
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: GoogleFonts.poppins(),
                      icon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: GoogleFonts.poppins(),
                      icon: Icon(Icons.lock),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) {
                     return MyHomePage();
                   },));              },
                  child: Text('Login'),
                ),
              
                 SizedBox(height: 10),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Don't have an account? ",style: GoogleFonts.poppins(),),
                     TextButton(onPressed:() {
                       Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) {
                         return SignUp();
                       },));
                     }, child: Text("Sign up",style: GoogleFonts.poppins(),))
                   ],
                 )
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white
      ),
     
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                'https://thumbs.dreamstime.com/b/men-barbershop-hairstylist-banner-logo-badge-vector-design-template-men-barbershop-hairstylist-banner-logo-badge-vector-design-139643468.jpg', 
                
              ),
              SizedBox(height: 20),
              Padding(
           padding: const EdgeInsets.only(left: 10,right: 10,top: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: GoogleFonts.poppins(),
                    icon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: GoogleFonts.poppins(),
                    icon: Icon(Icons.lock),
                  ),
                ),
              ),
                 Padding(
                 padding: const EdgeInsets.only(left: 10,right: 10,top: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'email',
                    hintStyle: GoogleFonts.poppins(),
                    icon: Icon(Icons.email),
                  ),
                ),
              ),
              SizedBox(height: 10),
                 Padding(
                 padding: const EdgeInsets.only(left: 10,right: 10,top: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Mobile',
                    hintStyle: GoogleFonts.poppins(),
                    icon: Icon(Icons.call),
                  ),
                ),
              ),
         
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                 Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) {
                   return MyHomePage();
                 },));              },
                child: Text('Create account'),
              ),
      
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Already have an account? ",style: GoogleFonts.poppins(),),
                   TextButton(onPressed:() {
                     Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) {
                       return LoginScreen();
                     },));
                   }, child: Text("Login",style: GoogleFonts.poppins(),))
                 ],
               )
            
            ],
          ),
        ),
      ),
    ); ;
  }
}