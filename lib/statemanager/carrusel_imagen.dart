import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Carrusel_Imagen extends StatelessWidget {
  const Carrusel_Imagen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "images/Destacado1.jpg",
      "images/Destacado2.png",
      "images/Destacado3.jpg"
    ];
    return SizedBox(
      width: double.infinity,
      height: 250.0,
      child: Swiper(
        viewportFraction: 0.90,
        scale: 0.95,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        pagination: const SwiperPagination(),
      ),
    );
  }
}