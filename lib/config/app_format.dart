import 'package:intl/intl.dart';

class AppFormat {
  static String date(String stringDate) {
    DateTime dateTime = DateTime.parse(stringDate);
    return DateFormat('d MMM ').format(dateTime); //25 jan 2022
  }

  static String date2(String stringDate) {
    DateTime dateTime = DateTime.parse(stringDate);
    return DateFormat('d MMM yyyy').format(dateTime); //25 jan 2022
  }

  static String currency(String number) {
    return NumberFormat.currency(
      decimalDigits: 2,
      locale: 'id_ID',
      symbol: 'Rp',
    ).format(double.parse(number));
  }
}
