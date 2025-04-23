import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TFormatter {

  static String formatDate(DateTime? date){
    date ??=DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US' , symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    if (phoneNumber.length == 10) {
      // Example: 0712345678 => 071 234 5678
      return '${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 9) {
      // Example: 712345678 => 071 234 5678 (assuming missing leading 0)
      return '0${phoneNumber.substring(0, 2)} ${phoneNumber.substring(2, 5)} ${phoneNumber.substring(5)}';
    } else if (phoneNumber.length == 11 && phoneNumber.startsWith('94')) {
      // Example: 94712345678 => +94 71 234 5678
      return '+94 ${phoneNumber.substring(2, 4)} ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }

    return phoneNumber;
  }
}