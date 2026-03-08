import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

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
}
