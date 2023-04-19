import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:extended_image/extended_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final url1 = 'https://d305e11xqcgjdr.cloudfront.net/public/stories/83511674-a8a0-426d-b9ec-9d4bf181c658/48245e08-1694-418b-a476-5c4c2edca408_media.jpg';
    final url2='https://d305e11xqcgjdr.cloudfront.net/stories/737a6a8a-7233-4b6d-ba3a-106fb8fbe124/albums/2/5_1.jpg';
    final url3 = 'https://d305e11xqcgjdr.cloudfront.net/stories/737a6a8a-7233-4b6d-ba3a-106fb8fbe124/albums/2/5_2.jpg';
    final url4 ='https://d305e11xqcgjdr.cloudfront.net/stories/737a6a8a-7233-4b6d-ba3a-106fb8fbe124/albums/2/5_1.jpg';
    final url5 = 'https://d305e11xqcgjdr.cloudfront.net/stories/737a6a8a-7233-4b6d-ba3a-106fb8fbe124/albums/2/5_2.jpg';
    final url6 ='https://d305e11xqcgjdr.cloudfront.net/stories/737a6a8a-7233-4b6d-ba3a-106fb8fbe124/albums/1/1_1.jpg';
    final url7='https://d305e11xqcgjdr.cloudfront.net/stories/737a6a8a-7233-4b6d-ba3a-106fb8fbe124/albums/1/1_2.jpg';

    return Scaffold(
      backgroundColor: Colors.black,
      body: CarouselSlider(
        slideTransform: CubeTransform(),
        slideIndicator: CircularSlideIndicator(
          padding: EdgeInsets.only(bottom: 50),
          currentIndicatorColor: Colors.white,
        ),
        unlimitedMode: true,
        children: [
        ExtendedImage.network(
        url1,
        key: ValueKey(url1),
        loadStateChanged: (imageState) {
          switch (imageState.extendedImageLoadState) {
            case LoadState.loading:
            case LoadState.completed:
              return imageState.completedWidget;
          }
        },
      ),
          ExtendedImage.network(
            url2,
            key: ValueKey(url2),
            loadStateChanged: (imageState) {
              switch (imageState.extendedImageLoadState) {
                case LoadState.loading:
                case LoadState.completed:
                  return imageState.completedWidget;
              }
            },
          ),
          ExtendedImage.network(
            url3,
            key: ValueKey(url3),
            loadStateChanged: (imageState) {
              switch (imageState.extendedImageLoadState) {
                case LoadState.loading:
                case LoadState.completed:
                  return imageState.completedWidget;
              }
            },
          ),
          ExtendedImage.network(
            url4,
            key: ValueKey(url4),
            loadStateChanged: (imageState) {
              switch (imageState.extendedImageLoadState) {
                case LoadState.loading:
                case LoadState.completed:
                  return imageState.completedWidget;
              }
            },
          ),
          ExtendedImage.network(
            url5,
            key: ValueKey(url5),
            loadStateChanged: (imageState) {
              switch (imageState.extendedImageLoadState) {
                case LoadState.loading:
                case LoadState.completed:
                  return imageState.completedWidget;
              }
            },
          ),
          ExtendedImage.network(
            url6,
            key: ValueKey(url6),
            loadStateChanged: (imageState) {
              switch (imageState.extendedImageLoadState) {
                case LoadState.loading:
                case LoadState.completed:
                  return imageState.completedWidget;
              }
            },
          ),
          /*
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.black,
          ),
          Container(color: Colors.black),
           */
        ],
      ),
    );
  }
}
