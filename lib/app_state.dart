import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
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
      _LocationList = prefs
              .getStringList('ff_LocationList')
              ?.map(_latLngFromString)
              .withoutNulls ??
          _LocationList;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _debugShowCheckModeBanner = false;
  bool get debugShowCheckModeBanner => _debugShowCheckModeBanner;
  set debugShowCheckModeBanner(bool _value) {
    _debugShowCheckModeBanner = _value;
  }

  List<LatLng> _LocationList = [];
  List<LatLng> get LocationList => _LocationList;
  set LocationList(List<LatLng> _value) {
    _LocationList = _value;
    prefs.setStringList(
        'ff_LocationList', _value.map((x) => x.serialize()).toList());
  }

  void addToLocationList(LatLng _value) {
    _LocationList.add(_value);
    prefs.setStringList(
        'ff_LocationList', _LocationList.map((x) => x.serialize()).toList());
  }

  void removeFromLocationList(LatLng _value) {
    _LocationList.remove(_value);
    prefs.setStringList(
        'ff_LocationList', _LocationList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromLocationList(int _index) {
    _LocationList.removeAt(_index);
    prefs.setStringList(
        'ff_LocationList', _LocationList.map((x) => x.serialize()).toList());
  }

  void updateLocationListAtIndex(
    int _index,
    LatLng Function(LatLng) updateFn,
  ) {
    _LocationList[_index] = updateFn(_LocationList[_index]);
    prefs.setStringList(
        'ff_LocationList', _LocationList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInLocationList(int _index, LatLng _value) {
    _LocationList.insert(_index, _value);
    prefs.setStringList(
        'ff_LocationList', _LocationList.map((x) => x.serialize()).toList());
  }

  int _userPrivateId = 0;
  int get userPrivateId => _userPrivateId;
  set userPrivateId(int _value) {
    _userPrivateId = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
