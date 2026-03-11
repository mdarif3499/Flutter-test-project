import 'package:flutter/foundation.dart';

import '../error/exception.dart';

class InMemoryStore {
  final Map<String, dynamic> _data = {};

  void setData(String key, dynamic value) {
    
    _data[key] = value;
    debugPrint("InMemoryStore :: setData :: Is have access Token : ${value is String}");
  }

  dynamic getData(String key) {
   
    return _data[key];
  }

  void deleteData(String key) {
    if (_data.containsKey(key)) {
      _data.remove(key);
    } else {
      throw LocalServicesException(message: 'Key "$key" does not exist.');
    }
  }
}
