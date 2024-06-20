import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _darkMode = prefs.getBool('ff_darkMode') ?? _darkMode;
    });
    _safeInit(() {
      _navOpen = prefs.getBool('ff_navOpen') ?? _navOpen;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _darkMode = false;
  bool get darkMode => _darkMode;
  set darkMode(bool value) {
    _darkMode = value;
    prefs.setBool('ff_darkMode', value);
  }

  bool _navOpen = false;
  bool get navOpen => _navOpen;
  set navOpen(bool value) {
    _navOpen = value;
    prefs.setBool('ff_navOpen', value);
  }

  bool _radioCondition = false;
  bool get radioCondition => _radioCondition;
  set radioCondition(bool value) {
    _radioCondition = value;
  }

  List<String> _csvData = [];
  List<String> get csvData => _csvData;
  set csvData(List<String> value) {
    _csvData = value;
  }

  void addToCsvData(String value) {
    csvData.add(value);
  }

  void removeFromCsvData(String value) {
    csvData.remove(value);
  }

  void removeAtIndexFromCsvData(int index) {
    csvData.removeAt(index);
  }

  void updateCsvDataAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    csvData[index] = updateFn(_csvData[index]);
  }

  void insertAtIndexInCsvData(int index, String value) {
    csvData.insert(index, value);
  }

  String _csvData2 = '';
  String get csvData2 => _csvData2;
  set csvData2(String value) {
    _csvData2 = value;
  }

  List<DocumentReference> _test = [];
  List<DocumentReference> get test => _test;
  set test(List<DocumentReference> value) {
    _test = value;
  }

  void addToTest(DocumentReference value) {
    test.add(value);
  }

  void removeFromTest(DocumentReference value) {
    test.remove(value);
  }

  void removeAtIndexFromTest(int index) {
    test.removeAt(index);
  }

  void updateTestAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    test[index] = updateFn(_test[index]);
  }

  void insertAtIndexInTest(int index, DocumentReference value) {
    test.insert(index, value);
  }

  List<String> _pdfFiles = [];
  List<String> get pdfFiles => _pdfFiles;
  set pdfFiles(List<String> value) {
    _pdfFiles = value;
  }

  void addToPdfFiles(String value) {
    pdfFiles.add(value);
  }

  void removeFromPdfFiles(String value) {
    pdfFiles.remove(value);
  }

  void removeAtIndexFromPdfFiles(int index) {
    pdfFiles.removeAt(index);
  }

  void updatePdfFilesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    pdfFiles[index] = updateFn(_pdfFiles[index]);
  }

  void insertAtIndexInPdfFiles(int index, String value) {
    pdfFiles.insert(index, value);
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
