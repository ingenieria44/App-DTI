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

  List<String> _NameDrop = [];
  List<String> get NameDrop => _NameDrop;
  set NameDrop(List<String> value) {
    _NameDrop = value;
  }

  void addToNameDrop(String value) {
    NameDrop.add(value);
  }

  void removeFromNameDrop(String value) {
    NameDrop.remove(value);
  }

  void removeAtIndexFromNameDrop(int index) {
    NameDrop.removeAt(index);
  }

  void updateNameDropAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    NameDrop[index] = updateFn(_NameDrop[index]);
  }

  void insertAtIndexInNameDrop(int index, String value) {
    NameDrop.insert(index, value);
  }

  List<double> _Drop = [];
  List<double> get Drop => _Drop;
  set Drop(List<double> value) {
    _Drop = value;
  }

  void addToDrop(double value) {
    Drop.add(value);
  }

  void removeFromDrop(double value) {
    Drop.remove(value);
  }

  void removeAtIndexFromDrop(int index) {
    Drop.removeAt(index);
  }

  void updateDropAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    Drop[index] = updateFn(_Drop[index]);
  }

  void insertAtIndexInDrop(int index, double value) {
    Drop.insert(index, value);
  }

  List<String> _named = [];
  List<String> get named => _named;
  set named(List<String> value) {
    _named = value;
  }

  void addToNamed(String value) {
    named.add(value);
  }

  void removeFromNamed(String value) {
    named.remove(value);
  }

  void removeAtIndexFromNamed(int index) {
    named.removeAt(index);
  }

  void updateNamedAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    named[index] = updateFn(_named[index]);
  }

  void insertAtIndexInNamed(int index, String value) {
    named.insert(index, value);
  }

  List<String> _CFD = [
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/app-d-t-i-dvlxtn/assets/dey96q2gkqtt/1.png',
    'https://picsum.photos/seed/213/600'
  ];
  List<String> get CFD => _CFD;
  set CFD(List<String> value) {
    _CFD = value;
  }

  void addToCFD(String value) {
    CFD.add(value);
  }

  void removeFromCFD(String value) {
    CFD.remove(value);
  }

  void removeAtIndexFromCFD(int index) {
    CFD.removeAt(index);
  }

  void updateCFDAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    CFD[index] = updateFn(_CFD[index]);
  }

  void insertAtIndexInCFD(int index, String value) {
    CFD.insert(index, value);
  }

  List<String> _table = [];
  List<String> get table => _table;
  set table(List<String> value) {
    _table = value;
  }

  void addToTable(String value) {
    table.add(value);
  }

  void removeFromTable(String value) {
    table.remove(value);
  }

  void removeAtIndexFromTable(int index) {
    table.removeAt(index);
  }

  void updateTableAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    table[index] = updateFn(_table[index]);
  }

  void insertAtIndexInTable(int index, String value) {
    table.insert(index, value);
  }
}
