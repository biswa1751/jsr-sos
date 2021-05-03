// handle all the constants

import 'package:jsr_sos/src/models/service.dart';

class AppConstants {
  //sentry related
  static const SENTRY_DSN =
      'https://08c573898eaa4808937bba8c3c5f5067@o512223.ingest.sentry.io/5619190';

  static const allowedImageExtensions = ['png', 'jpg', 'gif'];
  static const allowedVideoExtensions = ['mp4', 'mpeg', 'avi', 'flv'];
  static const allowedAudioExtensions = ['mp3'];
  static final services = [
    Service(
      id: 0,
      iconUrl: 'https://i.ibb.co/F4JyxDd/icon-oxygen.png',
      route: '/oxygen',
      title: 'oxygen',
    ),
    Service(
      id: 1,
      iconUrl: 'https://i.ibb.co/GT9cZzH/testing-icon.png',
      route: '/covid-testing',
      title: 'covid testing',
    ),
    Service(
      id: 2,
      iconUrl: 'https://i.ibb.co/JF80m0z/bed-icon.png',
      route: '/hospital-beds',
      title: 'hospital beds',
    ),
    Service(
      id: 3,
      iconUrl: 'https://i.ibb.co/TRFSLJJ/medicine-icon.png',
      route: '/medical-shops',
      title: 'medical shops',
    ),
    Service(
      id: 4,
      iconUrl: 'https://i.ibb.co/JKfkBDZ/vaccine-icon.png',
      route: '/vaccines',
      title: 'vaccines',
    ),
    Service(
      id: 5,
      iconUrl: 'https://i.ibb.co/gvGMQsm/food-icon.png',
      route: '/food',
      title: 'food',
    ),
    Service(
      id: 6,
      iconUrl: 'https://i.ibb.co/VgsBnpM/blood-icon.png',
      route: '/blood-and-plasma',
      title: 'blood and plasma',
    ),
    Service(
      id: 7,
      iconUrl: 'https://i.ibb.co/1fdXsVS/paidbed-icon.png',
      route: '/paid-isolation-facility',
      title: 'paid isolation facility',
    ),
    Service(
      id: 8,
      iconUrl: 'https://i.ibb.co/YDx87Qm/Test-icon.png',
      route: '/other-lab-tests',
      title: 'other lab tests',
    ),
  ];
}
