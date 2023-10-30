import 'package:simple_json_mapper/simple_json_mapper.dart';

@JObj()
class NameOfAllah {
  const NameOfAllah(
      {required this.arabic,
      required this.transliteration,
      required this.meaning});

  final String arabic;
  final String transliteration;
  final String meaning;
}
