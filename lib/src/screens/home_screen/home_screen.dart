import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:jsr_sos/src/constants/colors.dart';
import 'package:jsr_sos/src/constants/constants.dart';
import 'package:jsr_sos/src/constants/theme.dart';
import 'package:jsr_sos/src/global_components/global_app_bar.dart';
import 'package:jsr_sos/src/screens/home_screen/doctors_screen/doctors_screen.dart';
import 'package:jsr_sos/src/screens/home_screen/doctors_screen/local_components/select_number.dart';
import 'package:jsr_sos/src/screens/home_screen/faqs_screen/faq_screen.dart';
import 'package:jsr_sos/src/screens/home_screen/helpline_screen/helpline_screen.dart';
import 'package:jsr_sos/src/screens/home_screen/services_screen/servicess_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home-screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  final screens = [
    ServicesScreen(),
    DoctorsScreen(),
    FaqsScreen(),
    HelplineScreen()
  ];
  final titles = ['Home', 'Doctor', "FAQ's", 'Helpline'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppBar(title: titles[index]),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.black12,
        unselectedItemColor: AppColors.grey.withOpacity(0.5),
        currentIndex: index,
        showUnselectedLabels: true,
        selectedLabelStyle: AppTheme.textTheme.h412Medium,
        unselectedLabelStyle: AppTheme.textTheme.h412Medium!
            .copyWith(color: AppColors.grey.withOpacity(0.5)),
        onTap: (i) {
          if (i == 3) {
            showDialog(
              context: context,
              builder: (_) => SelectNumber(
                numbers: [AppConstants.helplineNumber],
              ),
            );
          } else {
            setState(() {
              index = i;
            });
          }
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
