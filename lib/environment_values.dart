import 'dart:convert';
import 'package:flutter/services.dart';

class FFDevEnvironmentValues {
  static const String currentEnvironment = 'Production';
  static const String environmentValuesPath =
      'assets/environment_values/environment.json';

  static final FFDevEnvironmentValues _instance =
      FFDevEnvironmentValues._internal();

  factory FFDevEnvironmentValues() {
    return _instance;
  }

  FFDevEnvironmentValues._internal();

  Future<void> initialize() async {
    try {
      final String response =
          await rootBundle.loadString(environmentValuesPath);
      final data = await json.decode(response);
      _apiUrl = data['apiUrl'];
      _debugMode = data['debugMode'];
      _appName = data['appName'];
      _maxUploadSize = data['maxUploadSize'];
    } catch (e) {
      print('Error loading environment values: $e');
    }
  }

  String _apiUrl = '';
  String get apiUrl => _apiUrl;

  bool _debugMode = false;
  bool get debugMode => _debugMode;

  String _appName = '';
  String get appName => _appName;

  int _maxUploadSize = 0;
  int get maxUploadSize => _maxUploadSize;
}
