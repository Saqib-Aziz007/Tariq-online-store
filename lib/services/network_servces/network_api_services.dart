import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../app_exceptions.dart';
import 'base_api_services.dart';

class NetworkClassServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic decodedResponse;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));

      decodedResponse = _processResponse(response);
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw TimeoutException('');
    }
    return decodedResponse;
  }

  @override
  Future<dynamic> postApi(dynamic data, String url) async {
    debugPrint(data.toString());
    dynamic decodedResponse;
    try {
      final response = await http
          .post(Uri.parse(url), body: jsonEncode(data))
          .timeout(const Duration(seconds: 10));

      decodedResponse = _processResponse(response);
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw TimeoutException('');
    }
    return decodedResponse;
  }

  @override
  Future<dynamic> putApi(dynamic data, String url) async {
    debugPrint(data.toString());
    dynamic decodedResponse;
    try {
      final response = await http
          .patch(Uri.parse(url), body: jsonEncode(data))
          .timeout(const Duration(seconds: 10));

      decodedResponse = _processResponse(response);
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw TimeoutException('');
    }
    return decodedResponse;
  }

  @override
  Future<dynamic> deleteApi(String url) async {
    dynamic decodedResponse;
    try {
      final response = await http
          .delete(Uri.parse(url))
          .timeout(const Duration(seconds: 10));
      decodedResponse = _processResponse(response);
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw TimeoutException('');
    }
    return decodedResponse;
  }

  dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body);
      case 201:
        return jsonDecode(response.body);
      case 400:
        throw BadRequestException(response.statusCode.toString());
      case 500:
        throw ServerException();

      default:
        throw FetchDataException();
    }
  }
}
