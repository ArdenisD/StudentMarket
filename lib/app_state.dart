import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _loginAmount = prefs.getInt('ff_loginAmount') ?? _loginAmount;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _universityNameList = [];
  List<String> get universityNameList => _universityNameList;
  set universityNameList(List<String> value) {
    _universityNameList = value;
  }

  void addToUniversityNameList(String value) {
    universityNameList.add(value);
  }

  void removeFromUniversityNameList(String value) {
    universityNameList.remove(value);
  }

  void removeAtIndexFromUniversityNameList(int index) {
    universityNameList.removeAt(index);
  }

  void updateUniversityNameListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    universityNameList[index] = updateFn(_universityNameList[index]);
  }

  void insertAtIndexInUniversityNameList(int index, String value) {
    universityNameList.insert(index, value);
  }

  int _NPS = 0;
  int get NPS => _NPS;
  set NPS(int value) {
    _NPS = value;
  }

  int _loginAmount = 0;
  int get loginAmount => _loginAmount;
  set loginAmount(int value) {
    _loginAmount = value;
    prefs.setInt('ff_loginAmount', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
