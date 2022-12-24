import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({Key? key, required this.items}) : super(key: key);
  final List<dynamic> items;

  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
      options:
      CarouselOptions(height: 160.h, enableInfiniteScroll: false, padEnds: false, viewportFraction: 0.78),
      items: items.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return CachedNetworkImage(
                imageUrl: '',
                imageBuilder: (context, imageProvider) {
                  return Container(
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.only(right: 10.w, left: items[0] == i ? 12.w : 0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        )),
                  );
                },
                errorWidget: (context, url, error) => Container(
                  padding: EdgeInsets.zero,
                  width: 284.w,
                  margin:
                  EdgeInsets.only(right: 10.w, left: items[0] == i ? 12.w : 0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('res/images/painting.jpeg'),
                        fit: BoxFit.cover,
                      )),
                ));
          },
        );
      }).toList(),
    );
  }
}
