import 'package:flutter/material.dart';

class BankCardScreen extends StatelessWidget {
  const BankCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                height: 50,
              ),
              Container(
                width: 292,
                height: 468,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
