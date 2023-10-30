// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated and consumed by 'simple_json' 

import 'package:simple_json_mapper/simple_json_mapper.dart';
import 'package:muslim_buddy/features/asma_ul_husna/name_of_allah.dart';

final _nameofallahMapper = JsonObjectMapper(
  (CustomJsonMapper mapper, Map<String, dynamic> json) => NameOfAllah(
    arabic: mapper.applyDynamicFromJsonConverter(json['arabic'])!,
    transliteration: mapper.applyDynamicFromJsonConverter(json['transliteration'])!,
    meaning: mapper.applyDynamicFromJsonConverter(json['meaning'])!,
  ),
  (CustomJsonMapper mapper, NameOfAllah instance) => <String, dynamic>{
    'arabic': mapper.applyDynamicFromInstanceConverter(instance.arabic),
    'transliteration': mapper.applyDynamicFromInstanceConverter(instance.transliteration),
    'meaning': mapper.applyDynamicFromInstanceConverter(instance.meaning),
  },
);

void init() {
  JsonMapper.register(_nameofallahMapper); 

  

  JsonMapper.registerListCast((value) => value?.cast<NameOfAllah>().toList());
}
    