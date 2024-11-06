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
              Container(height: 200, child: const AnalyzeChart()),
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
    return LineChart(
      LineChartData(
          minX: 0,
          maxX: 4,
          minY: 0,
          maxY: 5000,
          titlesData: Titles.getFlTitles(),
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(
            show: false,
          ),
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              gradient: const LinearGradient(
                colors: [Color(0xffD41E7F), Color(0xff6226CD)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              barWidth: 1.5,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(
                color: const Color(0xffb9b2c4),
                show: true,
                gradient: const LinearGradient(
                  colors: [Color(0xffa4177c), Color(0xff000040)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              spots: const [
                FlSpot(0, 1000),
                FlSpot(1, 3000),
                FlSpot(2, 1500),
                FlSpot(3, 4000),
                FlSpot(4, 2700),
              ],
            ),
          ],
          lineTouchData: LineTouchData(
            enabled: true,
            getTouchLineEnd: (barData, spotIndex) {
              return BorderSide.strokeAlignInside;
            },
            getTouchedSpotIndicator: (barData, spotIndexes) {
              return spotIndexes.map(
                (e) {
                  return TouchedSpotIndicatorData(
                      const FlLine(),
                      FlDotData(
                        checkToShowDot: (spot, barData) => true,
                        getDotPainter: (spot, percent, barData, index) {
                          return FlDotCirclePainter(
                            radius: 4,
                            color: const Color(0xffe327c7),
                            strokeWidth: 3,
                            strokeColor: const Color(0xfffa4cf1),
                          );
                        },
                      ));
                },
              ).toList();
            },
            touchTooltipData: LineTouchTooltipData(
                getTooltipColor: (touchedSpot) => const Color(0xffe429c8),
                tooltipRoundedRadius: 12,
                tooltipBorder:
                    const BorderSide(color: Color(0xfffc4cf4), width: 1),
                getTooltipItems: (List<LineBarSpot> touchedSpots) {
                  return touchedSpots.map((spot) {
                    return LineTooltipItem(
                      '\$ ${spot.y.toInt()}',
                      const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    );
                  }).toList();
                },
                tooltipPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 17)),
            touchCallback: (p0, p1) {},
            handleBuiltInTouches: true,
          )),
    );
  }
}

class Titles {
  static FlTitlesData getFlTitles() => FlTitlesData(
        bottomTitles: AxisTitles(
          axisNameWidget: const SizedBox(),
          axisNameSize: 6,
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 35,
            interval: 1,
            minIncluded: true,
            maxIncluded: true,
            getTitlesWidget: (value, meta) {
              switch (value.toInt()) {
                case 0:
                  return const Padding(
                    padding: EdgeInsets.only(top: 12.0, left: 20),
                    child: Text('Oct', style: TextStyle(color: Colors.white)),
                  );
                case 1:
                  return const Padding(
                    padding: EdgeInsets.only(
                      top: 12.0,
                    ),
                    child: Text('Nov', style: TextStyle(color: Colors.white)),
                  );
                case 2:
                  return const Padding(
                    padding: EdgeInsets.only(
                      top: 12.0,
                    ),
                    child: Text('Dec', style: TextStyle(color: Colors.white)),
                  );
                case 3:
                  return const Padding(
                    padding: EdgeInsets.only(
                      top: 12.0,
                    ),
                    child: Text('Jan', style: TextStyle(color: Colors.white)),
                  );
                case 4:
                  return const Padding(
                    padding: EdgeInsets.only(top: 12.0, right: 20),
                    child: Text('Feb', style: TextStyle(color: Colors.white)),
                  );
                default:
                  return const SizedBox.shrink();
              }
            },
          ),
        ),
        leftTitles: const AxisTitles(
          axisNameSize: 0,
          axisNameWidget: SizedBox(),
          sideTitles: SideTitles(
            showTitles: false,
            reservedSize: 0,
          ),
        ),
        topTitles: const AxisTitles(
          axisNameSize: 0,
          axisNameWidget: SizedBox(),
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          axisNameSize: 8,
          axisNameWidget: SizedBox(),
          sideTitles: SideTitles(showTitles: false),
        ),
      );
}
