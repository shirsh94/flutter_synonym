import 'package:http/http.dart' as http;
import 'dart:convert';
import 'model/word.dart';

class FlutterSynonym {
  static const String _baseUrl = 'https://api.datamuse.com/words?rel_syn=';

  Future<List<Word>?> fetchData(String word) async {
    final response = await http.get(Uri.parse('$_baseUrl$word'));

    if (response.statusCode == 200) {
      List<dynamic> responseData = jsonDecode(response.body);
      if (responseData.isEmpty) {
        return null;
      }
      List<Word> words = responseData.map((e) => Word.fromJson(e)).toList();
      return words;
    } else if (response.statusCode == 404) {
      throw Exception('Resource not found');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
