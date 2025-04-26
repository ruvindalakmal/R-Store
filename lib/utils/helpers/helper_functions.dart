import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class THelperFunction {

  static Color? getColor(String value) {
    if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Deep Purple') {
      return Colors.deepPurple;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Light Blue') {
      return Colors.lightBlue;
    } else if (value == 'Cyan') {
      return Colors.cyan;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Light Green') {
      return Colors.lightGreen;
    } else if (value == 'Lime') {
      return Colors.lime;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Amber') {
      return Colors.amber;
    } else if (value == 'Orange') {
      return Colors.orange;
    } else if (value == 'Deep Orange') {
      return Colors.deepOrange;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Grey' || value == 'Gray') {
      return Colors.grey;
    } else if (value == 'Blue Grey' || value == 'Blue Gray') {
      return Colors.blueGrey;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    }

    return Colors.transparent;
  }

  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static void showAlert(String title , String message){
    showDialog(
        context: Get.context!,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: ()=> Navigator.of(context).pop(),
                  child: const Text('OK')
              )
            ],
          );
        });
  }

  static void navigateToScreen(BuildContext context , Widget screen) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => screen),
    );
  }

  static String truncateText(String text , int maxLength){
    if(text.length <= maxLength){
      return text;
    }else{
      return text.substring(0 , maxLength);
    }
  }

  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize(){
    return MediaQuery.sizeOf(Get.context!);
  }

  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date , {String format= 'dd MMM yyyy'}){
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list){
    return list.toSet().toList();
  }

  static List<Widget> wrapWidget(List<Widget> widgets, int rowSize){
    final wrappedList = <Widget>[];
    for(var i = 0; i < widgets.length; i += rowSize){
      final rowChildren = widgets.sublist(i , i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren,));
    }
    return wrappedList;
  }
}
