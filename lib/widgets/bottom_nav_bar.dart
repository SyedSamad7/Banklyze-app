import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  List<Widget> screens = const [
    HomeScreen(),
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4()
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        decoration: BoxDecoration(
            color: const Color(0xff1e1e50),
            borderRadius: BorderRadius.circular(40),
            border: Border.all(width: 2, color: const Color(0xff201e54))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _navBtn(index: 0, icon: 'assets/images/homeIcon.svg'),
            _navBtn(index: 1, icon: 'assets/images/collectIcon.svg'),
            GestureDetector(
                onTap: () {
                  _onItemTap(2);
                },
                child: Image.asset('assets/images/Add.png')),
            _navBtn(index: 3, icon: 'assets/images/notificationIcon.svg'),
            _navBtn(index: 4, icon: 'assets/images/userIcon.svg'),
          ],
        ),
      ),
      body: screens[_selectedIndex],
    );
  }

  Widget _navBtn({required int index, required String icon}) {
    return GestureDetector(
      onTap: () {
        _onItemTap(index);
      },
      child: SvgPicture.asset(
        icon,
        colorFilter: _selectedIndex == index
            ? const ColorFilter.mode(Color(0xff3599d7), BlendMode.srcIn)
            : const ColorFilter.mode(Color(0xff6c6a8f), BlendMode.srcIn),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Screen 1',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Screen 2', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Screen 3', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Screen 4', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
