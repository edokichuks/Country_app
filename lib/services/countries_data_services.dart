import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:hng_task3/constants/app_api_constant.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

import '../features/countries/models/country/country.dart';
import 'failure.dart';

class CountriesDataService {
  Future<http.Response> _get({required Uri uri}) async {
    log('Making a get request to $uri');
    final http.Response response = await http.get(uri);
    return response;
  }

  Future<List<Country>> countryList() async {
    try {
      log('Attemping to get countries list');
      final response = await _get(uri: AppApiData.baseUri('all'));
      List<Country> data = List<Country>.from(
          jsonDecode(response.body).map((x) => Country.fromJson(x))).toList();
      return data;
    } on SocketException catch (ex, stackTrace) {
      throw Failure(
          message: 'You don\'t have internet connection',
          devMessage: stackTrace.toString());
    } on FormatException {
      throw Failure(
        message: 'Username or password is incorrect',
        devMessage: 'Error at formatException',
      );
    } on Failure catch (ex, stackTrace) {
      throw Failure(
          message: ex.message,
          devMessage: 'Error:$ex, Stacktrace: $stackTrace');
    }
  }
}

final countriesDataServiceProvider = Provider((ref) => CountriesDataService());
