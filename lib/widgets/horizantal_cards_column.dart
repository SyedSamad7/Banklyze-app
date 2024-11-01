import 'package:banklyze_app/models/horizontal_card_model.dart';
import 'package:flutter/material.dart';

class HorizantalCardsColumn extends StatelessWidget {
  final HorizontalCardModel cardModel;
  const HorizantalCardsColumn({super.key, required this.cardModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Image.asset(cardModel.imageUrl),
          const SizedBox(
            height: 6,
          ),
          Text(
            cardModel.name,
            style: const TextStyle(
                fontFamily: 'rubik',
                fontSize: 16,
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
