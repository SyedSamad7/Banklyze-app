import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fl_chart/fl_chart.dart';

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
                  ),
                ],
              ),
              Container(
                  height: 200,
                  // color: Colors.white,
                  child: const AnalyzeChart()),
            ],
          ),
        ),
      ),
    );
  }
}

class AnalyzeChart extends StatelessWidget {
  const AnalyzeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(LineChartData(
        minX: 0,
        maxX: 16,
        minY: 0,
        maxY: 1000,
        titlesData: Titles.getFlTitles(),
        gridData: const FlGridData(show: false),
        borderData: FlBorderData(
          show: false,
        ),
        lineBarsData: [
          LineChartBarData(
              isCurved: true,
              show: true,
              gradient: const LinearGradient(
                colors: [Color(0xffD41E7F), Color(0xff6226CD)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ))
        ]));
  }
}

class Titles {
  static FlTitlesData getFlTitles() => const FlTitlesData(
        // bottomTitles: AxisTitles(
        //   axisNameWidget: SizedBox(),
        //   axisNameSize: 12,
        //   sideTitles: SideTitles(
        //     maxIncluded: true,
        //     minIncluded: true,
        //     showTitles: true,
        //     reservedSize: 25,
        //     // getTitlesWidget: _bottomTitles,
        //   ),
        // ),
        topTitles: AxisTitles(
          axisNameSize: 0,
          axisNameWidget: SizedBox(),
          sideTitles: SideTitles(
            reservedSize: 20,
            showTitles: false,
            // getTitlesWidget: _leftTitles,
          ),
        ),
        rightTitles: AxisTitles(
          axisNameSize: 8,
          axisNameWidget: SizedBox(),
          sideTitles: SideTitles(
            reservedSize: 20,
            showTitles: false,
            // getTitlesWidget: _leftTitles,
          ),
        ),
        leftTitles: AxisTitles(
          axisNameSize: 6,
          axisNameWidget: SizedBox(),
          sideTitles: SideTitles(
            reservedSize: 20,
            showTitles: false,
            // getTitlesWidget: _leftTitles,
          ),
        ),
      );
}
