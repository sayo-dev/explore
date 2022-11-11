import 'package:dio/dio.dart';
import 'package:explore/model/response/country.dart';

const url = 'https://restcountries.com/v3.1/all';

class GetCountries {
  static final Dio _dio = Dio();

  static Future<List<CountryModel>?> getCountries() async {
    try {
      var response = await _dio.get(url);
      if (response.statusCode == 200) {
        final List allCountries = response.data;
       // print(allCountries.map((e) => CountryModel.fromJson(e)));

        return allCountries.map((e) => CountryModel.fromJson(e)).toList();
      }
    } catch (e) {}
    return null;
  }
}
