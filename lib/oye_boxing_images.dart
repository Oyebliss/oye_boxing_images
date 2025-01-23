import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class OyeBoxingImages extends StatefulWidget {
  const OyeBoxingImages({super.key});

  @override
  State<OyeBoxingImages> createState() => _OyeBoxingImagesState();
}

class _OyeBoxingImagesState extends State<OyeBoxingImages> {
  List<String> imgUrls = [
    'https://images.pexels.com/photos/1563356/pexels-photo-1563356.jpeg',
    'https://images.pexels.com/photos/884788/pexels-photo-884788.jpeg',
    'https://images.pexels.com/photos/30263731/pexels-photo-30263731/free-photo-of-luminous-full-moon-in-clear-night-sky.jpeg',
    'https://images.pexels.com/photos/163403/box-sport-men-training-163403.jpeg',
    'https://images.pexels.com/photos/2581662/pexels-photo-2581662.jpeg',
    'https://images.pexels.com/photos/682933/pexels-photo-682933.jpeg',
    'https://images.pexels.com/photos/724921/pexels-photo-724921.jpeg',
    'https://images.pexels.com/photos/1004014/pexels-photo-1004014.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
        itemCount: imgUrls.length,
        itemBuilder: (context, index, pageViewIndex) {
          return Container(
            padding: EdgeInsets.all(10),
            child: Image.network(
              imgUrls.elementAt(index),
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: true,
        ),
      ),
    );
  }
}
