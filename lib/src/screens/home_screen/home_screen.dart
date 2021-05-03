import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:jsr_sos/src/constants/colors.dart';
import 'package:jsr_sos/src/constants/theme.dart';
import 'package:jsr_sos/src/global_components/global_app_bar.dart';
import 'package:jsr_sos/src/screens/home_screen/local_components/carousal.dart';
import 'package:jsr_sos/src/screens/home_screen/local_components/services_select.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home-screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppBar(title: 'Home'),
      body: Column(
        children: [Carousel(), Flexible(child: ServicesSelect())],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.black12,
        unselectedItemColor: AppColors.grey.withOpacity(0.5),
        currentIndex: index,
        showUnselectedLabels: true,
        selectedLabelStyle: AppTheme.textTheme.h412Medium,
        unselectedLabelStyle: AppTheme.textTheme.h412Medium!
            .copyWith(color: AppColors.grey.withOpacity(0.5)),
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              TablerIcons.home_2,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              TablerIcons.stethoscope,
            ),
            label: 'Doctor',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              TablerIcons.question_mark,
            ),
            label: 'Faqs',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              TablerIcons.phone,
            ),
            label: 'Helpline',
          ),
        ],
      ),
    );
  }
}
