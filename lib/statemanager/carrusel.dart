import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Carrusel extends StatelessWidget {
  const Carrusel({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "images/teatro1.jpg",
      "images/teatro2.jpg",
      "images/teatro3.png"
    ];
    return SizedBox(
      width: 200.0,
      height: 250.0,
      child: Swiper(
        viewportFraction: 1,
        scale: .95,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            images[index],
            scale: 10,
            fit: BoxFit.fill,
          );
        },
        itemWidth: 300.0,
        itemCount: images.length,
        pagination: const SwiperPagination(),
      ),
    );
  }
}