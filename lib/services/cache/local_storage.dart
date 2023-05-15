import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage{
  SharedPreferences? _sharedPreferences;

  LocalStorage(){
    _init();
  }

  Future<void> _init() async{
    _sharedPreferences = await SharedPreferences.getInstance();

  }

  Future<void> setData(String key, dynamic value) async{
    if(_sharedPreferences == null) await _init();
    if(value is int){
      _sharedPreferences!.setInt(key, value);
    } else if(value is String){
      _sharedPreferences!.setString(key, value);
    } else if(value is double){
      _sharedPreferences!.setDouble(key, value);
    } else if(value is bool){
      _sharedPreferences!.setBool(key, value);
    }
  }

  Future<String?> getString(String key) async{
    if(_sharedPreferences == null) await _init();
    return _sharedPreferences!.getString(key); 
  }

  Future<bool?> getBool(String key, {bool defaultValue = false}) async {
    if(_sharedPreferences == null) await _init();
    return _sharedPreferences!.getBool(key);
  }
  
  Future<int?> getInt(String key) async{
    if(_sharedPreferences == null) await _init();
    return _sharedPreferences!.getInt(key);
  }

  Future<double?> getDouble(String key) async {
    if (_sharedPreferences == null) await _init();
    return _sharedPreferences!.getDouble(key);
  }

  Future<bool> removeData(String key) async {
    if (_sharedPreferences == null) await _init();
    return _sharedPreferences!.remove(key);
  }

  Future<bool> clearData(String key) async {
    if (_sharedPreferences == null) await _init();
    return _sharedPreferences!.clear();
  }
}