// handle all the constants

import 'package:jsr_sos/src/models/service.dart';

class AppConstants {
  //sentry related
  static const SENTRY_DSN =
      'https://95343e63a607420cbe4bd6d84ae25f19@o438738.ingest.sentry.io/5747845';

  static const allowedImageExtensions = ['png', 'jpg', 'gif'];
  static const allowedVideoExtensions = ['mp4', 'mpeg', 'avi', 'flv'];
  static const allowedAudioExtensions = ['mp3'];
  static final services = [
    Service(
      id: 0,
      iconUrl: 'https://i.ibb.co/F4JyxDd/icon-oxygen.png',
      route: '/oxygen',
      title: 'Oxygen',
    ),
    Service(
      id: 1,
      iconUrl: 'https://i.ibb.co/GT9cZzH/testing-icon.png',
      route: '/covid_testing',
      title: 'Covid Testing',
    ),
    Service(
      id: 2,
      iconUrl: 'https://i.ibb.co/JF80m0z/bed-icon.png',
      route: '/hospital_beds',
      title: 'Hospital Beds',
    ),
    Service(
      id: 3,
      iconUrl: 'https://i.ibb.co/TRFSLJJ/medicine-icon.png',
      route: '/medical_shops',
      title: 'Medical Shops',
    ),
    Service(
      id: 4,
      iconUrl: 'https://i.ibb.co/JKfkBDZ/vaccine-icon.png',
      route: '/vaccines',
      title: 'Vaccines',
    ),
    Service(
      id: 5,
      iconUrl: 'https://i.ibb.co/gvGMQsm/food-icon.png',
      route: '/food',
      title: 'Food',
    ),
    Service(
      id: 6,
      iconUrl: 'https://i.ibb.co/VgsBnpM/blood-icon.png',
      route: '/blood_and_plasma',
      title: 'Blood and Plasma',
    ),
    Service(
      id: 7,
      iconUrl: 'https://i.ibb.co/1fdXsVS/paidbed-icon.png',
      route: '/paid_isolation_facility',
      title: 'Paid isolation Facility',
    ),
    Service(
      id: 8,
      iconUrl: 'https://i.ibb.co/YDx87Qm/Test-icon.png',
      route: '/other_lab_tests',
      title: 'Other Lab Tests',
    ),
  ];
}
