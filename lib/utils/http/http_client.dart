import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class THttpHelper {
  static const String _baseUrl = 'https://Lakmal-T-Store.com'; /// FireBase URL

  ///Get Request Helper Method
  static Future<Map<String , dynamic>> get(String endPoint) async{
    final response = await http.get(Uri.parse('$_baseUrl/$endPoint'));
    return _handleResponse(response);
  }

  ///Post Request Helper Method
  static Future<Map<String , dynamic>> post(String endPoint , dynamic data) async{
    final response = await http.post(
      Uri.parse('$_baseUrl/$endPoint'),
      headers: {'Content-Type' : 'application/json'},
      body: jsonEncode(data)
    );
    return _handleResponse(response);
  }

  ///Put Request Helper Method
  static Future<Map<String , dynamic>> put(String endPoint , dynamic data) async{
    final response = await http.put(
        Uri.parse('$_baseUrl/$endPoint'),
        headers: {'Content-Type' : 'application/json'},
        body: jsonEncode(data)
    );
    return _handleResponse(response);
  }

  ///Delete Request Helper Method
  static Future<Map<String , dynamic>> delete(String endPoint) async{
    final response = await http.delete(Uri.parse('$_baseUrl/$endPoint'));
    return _handleResponse(response);
  }

  ///Handle the HTTP Response
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if(response.statusCode == 200){
      return jsonDecode(response.body);
    }else {
      throw Exception('Failed to Load Data : ${response.statusCode}');
    }
  }
}

