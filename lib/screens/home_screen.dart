import 'dart:developer';

import 'package:banklyze_app/models/horizontal_card_model.dart';
import 'package:banklyze_app/models/social_apps_model.dart';
import 'package:banklyze_app/screens/analyze_screen.dart';
import 'package:banklyze_app/widgets/horizantal_cards_column.dart';
import 'package:banklyze_app/widgets/social_app_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hallo',
                              style: TextStyle(
                                  fontFamily: 'robik',
                                  color: Color(0xffFFFFFF),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Bryce Turner',
                              style: TextStyle(
                                  fontFamily: 'rubik',
                                  fontSize: 16,
                                  color: Color(0xffB9B2C4),
                                  fontWeight: FontWeight.w400),
                            )
                          ],
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
                    Container(
                      height: 230,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                              width: 4, color: const Color(0xff311f60)),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/pinkCard.png'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 20, right: 8),
                  scrollDirection: Axis.horizontal,
                  itemCount: horizontalCards.length,
                  itemBuilder: (context, index) {
                    final cardIndex = horizontalCards[index];
                    return GestureDetector(
                        onTap: () {
                          if (index == 0) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AnalyzeScreen()));
                          }
                          log('message');
                        },
                        child: HorizantalCardsColumn(cardModel: cardIndex));
                  },
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Transaction details',
                          style: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Color(0xffFFFFFF)),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                              fontFamily: 'rubik',
                              fontSize: 16,
                              color: Color(0xffB9B2C4),
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    ListView.builder(
                      itemCount: socialApps.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      itemBuilder: (context, index) {
                        final socilApp = socialApps[index];
                        return SocialAppCard(socialApp: socilApp);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
