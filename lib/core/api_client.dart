import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:simple_json_mapper/simple_json_mapper.dart';

class ApiClient {
  const ApiClient({this.baseUrl});

  final String? baseUrl;

  ApiClient create({String? baseUrl}) {
    return ApiClient(
        baseUrl: baseUrl != null && baseUrl.isNotEmpty
            ? _getBaseUrl(baseUrl, this.baseUrl)
            : this.baseUrl);
  }

  Future<T> get<T>(String url) async {
    final response = await http.get(Uri.parse(_getBaseUrl(url, baseUrl)));

    if (response.statusCode == 200) {
      return JsonMapper.deserialize<T>(response.body)!;
    } else {
      throw Exception('Failed to load album');
    }
  }

  String _getBaseUrl(String url, String? baseUrl) {
    final isAbsolute = Uri.parse(url).isAbsolute;
    return !isAbsolute && baseUrl != null && baseUrl.isNotEmpty
        ? '$baseUrl/$url'
        : url;
  }
}
