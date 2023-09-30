import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:naai/constants/constant.dart';

class CarouselSliderPage extends StatefulWidget {
  @override
  _CarouselSliderPageState createState() => _CarouselSliderPageState();
}

class _CarouselSliderPageState extends State<CarouselSliderPage> {
 

  final CarouselController _controller = CarouselController();
  double _currentSliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
     // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        CarouselSlider.builder(
          itemCount: imageUrls.length,
          options: CarouselOptions(
            height: 250.0, 
            viewportFraction: 0.9, 
            autoPlay: true, 
            autoPlayInterval: const Duration(seconds: 3), 
            onPageChanged: (index, reason) {
              setState(() {
                _currentSliderValue = index.toDouble();
              });
            },
         
          ),
          itemBuilder: (BuildContext context, int index, int realIndex) {
          
            return SliderCard(img: imageUrls[index],); 
          },
        ),
        DotsIndicator(
          dotsCount: imageUrls.length,
          position: _currentSliderValue.toInt(),
          decorator: const DotsDecorator(
            color: Colors.grey, 
            activeColor: Colors.black, 
            size: Size(8.0, 8.0),
            activeSize: Size(14.0, 14.0),
            spacing: EdgeInsets.all(8.0),
          ),
        ),
      ],
    );
  }
}


class SliderCard extends StatelessWidget {
   SliderCard({super.key,required this.img});
  late String img;
 

  @override
  Widget build(BuildContext context) {
    return  Container(
    
      child: Card(
          elevation: 6,
              margin: const EdgeInsets.all(16.0),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
           
                  Image.network(
                    img,
                    fit: BoxFit.fill,
                  ),
          
               
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    child: const Icon(
                      Icons.card_travel,
                      color: Colors.black,size: 25,
                    ),
                  ),
          
               
                 
                ],
                
              ),
            ),
    );
  }
}