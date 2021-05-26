import 'package:jsr_sos/src/constants/constants.dart';
import 'package:date_format/date_format.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppHelpers {
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  // converting enum to string
  static String enumToString(dynamic data) {
    String string;
    if (data.toString().contains('.')) {
      string = data.toString().split('.')[1];
    } else {
      string = data.toString();
    }
    return '${string[0].toUpperCase()}${string.substring(1)}';
  }

  //format the data
  static String getFormattedDate(DateTime time) {
    return formatDate(
        time.toLocal(), [dd, '.', mm, '.', yyyy, '  ', hh, ':', nn, ' ', am]);
  }

  //print duration
  static String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    var twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    var twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return '${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds';
  }

  static Future<String?> pickFile({
    required FileType fileType,
    List<String>? allowedExtension,
  }) async {
    var result = await FilePicker.platform.pickFiles(
        type: fileType,
        allowedExtensions: allowedExtension,
        onFileLoading: (p) {
          print(p.index);
        });
    if (result?.files != null) {
      final file = result!.files.first;
      print(file.size);
      print(file.extension);
      print(file.path);
      if (AppConstants.allowedVideoExtensions.contains(file.extension)) {
        if (file.size! > 1024 * 1024 * 60) {
          throw 'Maximum Size of a Audio / Video should be 100 MB';
        }
      } else {
        if (file.size! > 1024 * 1024 * 10) {
          throw 'Maximum Size of a Image / Document should be 10 MB';
        }
      }
      return file.path;
    }
    throw 'User Cancelled';
  }

  static int getPriceInRupee(String priceInPaise) {
    try {
      return int.tryParse(priceInPaise)! ~/ 100;
    } catch (e) {
      return 0;
    }
  }

  static void call(String number) async {
    final uri = Uri(
      scheme: 'tel',
      path: number,
    );
    final url = uri.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Cannot launch url $url');
    }
  }

  static void launchWebUrl(String urlToLaunch) async {
    final uri = Uri(
      scheme: 'https',
      path: urlToLaunch,
    );
    final url = uri.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Cannot launch url $url');
    }
  }

  static void launcUrl(String urlToLaunch) async {
    final url = urlToLaunch;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Cannot launch url $url');
    }
  }
}
