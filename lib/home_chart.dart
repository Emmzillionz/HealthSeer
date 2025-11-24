import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DateTime _currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                ClipPath(
                  clipper: CustomClipPath(),
                  child: Container(
                    height: 580,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF316DEF),
                          Color(0xFF6F9DFF),
                        ],
                        stops: [0.0, 1.0],
                        end: Alignment.topRight,
                        begin: Alignment.bottomLeft,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, top: 15),
                                child: _containerx(),
                              ),
                              Text(
                                "${_getMonthName(_currentDate.month)} ${_currentDate.day}",
                                style: const TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.calendar_month_outlined,
                                  color: Color(0xFFFFFFFF),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Center(child: _buildWeeklyCalendar()),
                        ),
                        _buildDiabetesRiskChart(),
                        Align(
                          alignment: AlignmentDirectional.center,
                          child: Image.asset('assets/images/Frame 52.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                Transform.translate(offset: const Offset(0,-90),
                child: _buildTextContainer(),),
                Transform.translate(offset: const Offset(0,-65 ),
                  child:
                  Container(
                    width: 350,
                    height: 154,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFFE4EAF2), // Matches #E4EAF233
                          offset: Offset(0, 4), // 0px horizontal, 4px vertical
                          blurRadius: 4, // 4px blur
                          spreadRadius: 0,
                        ),
                      ],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Stack(
                      children: [
                        const Positioned(
                          top: 15,
                          left: 15,
                          child: Text(
                            'Body Mass Index',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'PolySans',
                                fontSize: 16,
                                color: Color(0xFF000000)),
                          ),
                        ),
                        const Positioned(
                          top: 42,
                          left: 15,
                          child: Text(
                            'Updated 40 days ago',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF444444),
                              fontFamily: 'PolySans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 73,
                          left: 15,
                          child: TextWidget(),
                        ),
                        const Positioned(
                          left: 15,
                          top: 120,
                          child: Text(
                            'of 4.52 avg.',
                            style: TextStyle(
                              color: Color(0xFF7CA3F6),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'PolySans',
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 15,
                          right: 15,
                          child: Icon(
                            size: 16,
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                        Positioned(
                          left: 144,
                          top: 77,
                          child: Image.asset('assets/icons/Graph.png'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _containerx() {
    return Container(
      padding: const EdgeInsets.only(left: 1),
      height: 28,
      width: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: const Stack(
        children: [
          Positioned(
            left: 4,
            top: 4,
            child: Icon(
              Icons.check_circle,
              color: Colors.blue,
              size: 22,
            ),
          ),
          Positioned(
            top: 6,
            right: 6,
            child: Text(
              '0',
              style: TextStyle(
                fontSize: 13,
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontFamily: 'PolySans',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeeklyCalendar() {
    final days = [
      'Sun',
      'Mon',
      'Tue',
      'Wed',
      'Thu',
      'Fri',
      'Sat',
    ];
    final today = _currentDate.day;
    final firstDayOfWeek = _currentDate.subtract(
      Duration(
        days: _currentDate.weekday % 7,
      ),
    );

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          7,
          (index) {
            final dayDate = firstDayOfWeek.add(
              Duration(days: index),
            );
            final isToday = dayDate.day == today &&
                dayDate.weekday == _currentDate.weekday &&
                dayDate.month == _currentDate.month &&
                dayDate.year == _currentDate.year;

            return Column(
              children: [
                Text(
                  isToday ? 'Today' : days[index],
                  style: TextStyle(
                    color: isToday
                        ? const Color(0xFFE3ECFF)
                        : const Color(0xFFE3ECFF),
                    fontWeight: isToday ? FontWeight.w400 : FontWeight.normal,
                    fontFamily: 'PolySans',
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color:
                        isToday ? const Color(0xFFE3ECFF) : Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      dayDate.day.toString(),
                      style: TextStyle(
                        fontSize: 16,
                        color: isToday
                            ? const Color(0xFF326EF0)
                            : const Color(0xFFE3ECFF),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'PolySans',
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildDiabetesRiskChart() {
    return Container(
      width: 300,
      height: 305,
      padding: const EdgeInsets.all(1),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          SizedBox(
            child: SfCircularChart(
              series: <CircularSeries>[
                DoughnutSeries<ChartData, String>(
                  dataSource: [
                    ChartData(
                      'Safe',
                      20,
                      const Color(0xFF91B4FF),
                    ),
                    ChartData(
                      'Risk',
                      80,
                      Colors.white,
                    ),
                  ],
                  yValueMapper: (ChartData data, _) => data.value,
                  xValueMapper: (ChartData data, _) => data.category,
                  pointColorMapper: (ChartData data, _) => data.color,
                  innerRadius: '80%',
                ),
              ],
              annotations: <CircularChartAnnotation>[
                CircularChartAnnotation(
                  widget: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                    height: 140,
                    width: 140,
                    child: const Stack(
                      children: [
                        Positioned(
                          top: 15,
                          left: 18,
                          child: Text(
                            '80%',
                            style: TextStyle(
                              fontFamily: 'PolySans',
                              fontSize: 48,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 80,
                          left: 15,
                          child: Text(
                            softWrap: true,
                            'chance of having',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'PolySans',
                              color: Color(0xFFE1EBFF),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 95,
                          left: 42,
                          child: Text(
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'PolySans',
                              color: Color(0xFFE1EBFF),
                              fontSize: 14,
                            ),
                            'diabetes',
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextContainer() {
    return Container(
      width: 350,
      height: 154,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFE4EAF2), // Matches #E4EAF233
            offset: Offset(0, 4), // 0px horizontal, 4px vertical
            blurRadius: 4, // 4px blur
            spreadRadius: 0,
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          const Positioned(
            top: 15,
            left: 15,
            child: Text(
              'Hemoglobin A1c',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'PolySans',
                fontSize: 16,
                color: Color(0xFF000000),
              ),
            ),
          ),
          const Positioned(
            top: 42,
            left: 15,
            child: Text(
              'Updated 40 days ago',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF444444),
                fontFamily: 'PolySans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Positioned(
            top: 73,
            left: 15,
            child: Text(
              '3.75',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                fontFamily: 'PolySans',
                color: Color(0xFF5485ED),
              ),
            ),
          ),
          const Positioned(
            left: 15,
            top: 120,
            child: Text(
              'of 4.52 avg.',
              style: TextStyle(
                color: Color(0xFF7CA3F6),
                fontWeight: FontWeight.w400,
                fontFamily: 'PolySans',
              ),
            ),
          ),
          const Positioned(
            top: 15,
            right: 15,
            child: Icon(
              fill: 0.8,
              grade: 20,
              size: 16,
              weight: 50,
              color: Colors.black,
              Icons.arrow_forward_ios_sharp,
            ),
          ),
          Positioned(
            left: 144,
            top: 77,
            child: Image.asset('assets/icons/Graph.png'),
          )
        ],
      ),
    );
  }

  String _getMonthName(int month) {
    return [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ][month - 1];
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '3.75',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        fontFamily: 'PolySans',
        color: Color(0xFF5485ED),
      ),
    );
  }
}

class CurvedRectangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, 50);
    path.quadraticBezierTo(size.width / 2, 0, size.width, 50);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ChartData {
  final String category;
  final num value;
  final Color color;

  ChartData(this.category, this.value, this.color);
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 70);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 70,
    );
    path.lineTo(w, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) {
    return false;
  }
}
