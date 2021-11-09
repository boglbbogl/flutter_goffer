import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';

class HomeBannerAd extends StatelessWidget {
  const HomeBannerAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Event',
          style: theme.textTheme.bodyText2!.copyWith(
              color: appSubColor, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.send,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.share_rounded,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.clear_rounded,
                color: Colors.black,
                size: 28,
              )),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: size.height * 0.8,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
            ),
            items: [
              _carouselItem(
                  widget: Column(
                children: const [Text('1. 메인 이미지')],
              )),
              _carouselItem(
                  widget: Column(
                children: const [Text('2. 슬라이드 이미지')],
              )),
            ],
          ),
        ],
      ),
    );
  }

  Container _carouselItem({
    required Widget widget,
  }) {
    return Container(
      width: size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              width: 2, color: const Color.fromRGBO(195, 195, 195, 1))),
      child: Column(
        children: [
          widget,
        ],
      ),
    );
  }
}
