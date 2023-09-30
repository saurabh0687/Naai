import 'package:flutter/material.dart';
import 'package:naai/constants/constant.dart';
import 'package:naai/widgets/slider.dart';


class BarbersList extends StatelessWidget {
  const BarbersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: imageUrl2.length,
      itemBuilder: (context, index) {
        return SliderCard(img: imageUrl2[index]);
      },
    );
  }
}
