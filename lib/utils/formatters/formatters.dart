import 'package:intl/intl.dart';

class TFortmatters {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd/MM/yyyy')
        .format(date); // Customize the format as needed
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(
      locale: 'en_US',
      symbol: '\$',
    ).format(amount); // Customize the currency the locale and symbol as needed
  }

  static String formatPhoneNumber(String phoneNumber) {
    //Assuming a 10-digit VN phone numberformat

    if (phoneNumber.length == 10) {
      return '+84 ' +
          phoneNumber.substring(0, 3) +
          ' ' +
          phoneNumber.substring(3, 6) +
          ' ' +
          phoneNumber.substring(6, 10);
    } else if (phoneNumber.length == 11) {
      return '+84 ' +
          phoneNumber.substring(1, 4) +
          ' ' +
          phoneNumber.substring(4, 7) +
          ' ' +
          phoneNumber.substring(7, 11);
    } else {
      return phoneNumber;
    }
  }

  // Not fully tested

  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Extract the country code from the digitsOnly
    String countryCode = digitsOnly.substring(0, 2);
    digitsOnly = digitsOnly.substring(2);

    // Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('+$countryCode ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '84') {
        groupLength = 3;
      }
      int end = 1 + i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }

    return formattedNumber.toString();
  }
}
