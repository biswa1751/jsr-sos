import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class TimeOfDayConverter implements JsonConverter<TimeOfDay, String> {
  const TimeOfDayConverter();

  @override
  TimeOfDay fromJson(json) {
    //convert to local time zone
    var time = json.split(':');
    var timeOfDay =
        TimeOfDay(hour: int.parse(time[0]), minute: int.parse(time[1]));
    final now = DateTime.now();
    var dateTime = DateTime.utc(
        now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
    final localTime = dateTime.toLocal();
    var returnedTime =
        TimeOfDay(hour: localTime.hour, minute: localTime.minute);

    return returnedTime;
  }

  @override
  String toJson(TimeOfDay object) {
    //convert to utc time zone
    final now = DateTime.now();
    final dateTime =
        DateTime(now.year, now.month, now.day, object.hour, object.minute);
    final utcTime = dateTime.toUtc();
    var hour = utcTime.hour.toString();
    var hourString = '${hour.length == 1 ? '0' : ''}$hour';
    var minute = utcTime.minute.toString();
    var minuteString = '${minute.length == 1 ? '0' : ''}$minute';
    return '$hourString:$minuteString:00.000';
  }
}
