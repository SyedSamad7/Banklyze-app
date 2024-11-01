import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnalyzeScreen extends StatefulWidget {
  const AnalyzeScreen({super.key});

  @override
  State<AnalyzeScreen> createState() => _AnalyzeScreenState();
}

class _AnalyzeScreenState extends State<AnalyzeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: SvgPicture.asset(
                      'assets/images/arrowLeftIcon.svg',
                    ),
                  ),
                  const Text(
                    'Analyze',
                    style: TextStyle(
                        fontFamily: 'rubik',
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Color(0xffFFFFFF)),
                  ),
                  const SizedBox(
                    width: 15,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
