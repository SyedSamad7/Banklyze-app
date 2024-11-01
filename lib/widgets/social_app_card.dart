import 'package:banklyze_app/models/social_apps_model.dart';
import 'package:flutter/material.dart';

class SocialAppCard extends StatelessWidget {
  final SocialAppsModel socialApp;
  const SocialAppCard({super.key, required this.socialApp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(socialApp.imageUrl))),
          ),
          const SizedBox(
            width: 15,
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      socialApp.name,
                      style: const TextStyle(
                          fontFamily: 'rubik',
                          fontSize: 18,
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      socialApp.balance,
                      style: const TextStyle(
                          fontFamily: 'rubik',
                          fontSize: 18,
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      socialApp.date,
                      style: const TextStyle(
                          fontFamily: 'rubik',
                          fontSize: 16,
                          color: Color(0xffB9B2C4),
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      socialApp.time,
                      style: const TextStyle(
                          fontFamily: 'rubik',
                          fontSize: 16,
                          color: Color(0xffB9B2C4),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
