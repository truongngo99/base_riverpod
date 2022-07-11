import 'package:intl/intl.dart';

extension StringX on String {
  String mapDate() {
    if (this != "") {
      return DateFormat.yMMMMEEEEd('ja').format(DateTime.parse(this));
    } else {
      return "cai nay ko co ngay ne";
    }
  }
}