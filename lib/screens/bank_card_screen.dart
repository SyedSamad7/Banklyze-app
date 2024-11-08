import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BankCardScreen extends StatefulWidget {
  const BankCardScreen({super.key});

  @override
  State<BankCardScreen> createState() => _BankCardScreenState();
}

class _BankCardScreenState extends State<BankCardScreen> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Bank Cards',
                        style: TextStyle(
                            fontFamily: 'robik',
                            color: Color(0xffFFFFFF),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'balance',
                    style: TextStyle(
                        color: Color(0xffB9B2C4),
                        fontFamily: 'rubik',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    '\$1.924,35',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontFamily: 'rubik',
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            CarouselSlider.builder(
              carouselController: _carouselController,
              itemCount: images.length,
              options: CarouselOptions(
                viewportFraction: 1,
                aspectRatio: 73 / 98,
                initialPage: 0,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),
              itemBuilder: (context, index, realIndex) {
                return GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage(images[index]))),
                  ),
                );
              },
            ),
            AnimatedSmoothIndicator(
              count: 3, // Set count to 3

              effect: const WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Color(0xff46c0eb),
                dotColor: Color(0xff3a3a84),
              ),
              activeIndex: activeIndex,
            ),
          ],
        ),
      ),
    ));
  }
}

List<String> images = [
  'assets/images/varticalPinkCard.png',
  'assets/images/varticalGreenCard.png',
  'assets/images/varticalPinkCard.png',
  'assets/images/varticalGreenCard.png',
  'assets/images/varticalPinkCard.png',
  'assets/images/varticalGreenCard.png',
];
