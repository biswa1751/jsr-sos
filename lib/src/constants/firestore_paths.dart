//managhe all the api urls
class FireStorePaths {
  //all
  static const services = 'services';
  static const faqs = 'faqs';
  static const doctors = 'doctors';
  static const banners = 'banners';
  static String sourcesURl(String source) => 'services/$source/service_options';
}
