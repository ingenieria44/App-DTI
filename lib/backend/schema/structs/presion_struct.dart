// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PresionStruct extends BaseStruct {
  PresionStruct({
    List<String>? name,
    List<double>? drop,
  })  : _name = name,
        _drop = drop;

  // "name" field.
  List<String>? _name;
  List<String> get name => _name ?? const [];
  set name(List<String>? val) => _name = val;

  void updateName(Function(List<String>) updateFn) {
    updateFn(_name ??= []);
  }

  bool hasName() => _name != null;

  // "Drop" field.
  List<double>? _drop;
  List<double> get drop => _drop ?? const [];
  set drop(List<double>? val) => _drop = val;

  void updateDrop(Function(List<double>) updateFn) {
    updateFn(_drop ??= []);
  }

  bool hasDrop() => _drop != null;

  static PresionStruct fromMap(Map<String, dynamic> data) => PresionStruct(
        name: getDataList(data['name']),
        drop: getDataList(data['Drop']),
      );

  static PresionStruct? maybeFromMap(dynamic data) =>
      data is Map ? PresionStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'Drop': _drop,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
          isList: true,
        ),
        'Drop': serializeParam(
          _drop,
          ParamType.double,
          isList: true,
        ),
      }.withoutNulls;

  static PresionStruct fromSerializableMap(Map<String, dynamic> data) =>
      PresionStruct(
        name: deserializeParam<String>(
          data['name'],
          ParamType.String,
          true,
        ),
        drop: deserializeParam<double>(
          data['Drop'],
          ParamType.double,
          true,
        ),
      );

  @override
  String toString() => 'PresionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PresionStruct &&
        listEquality.equals(name, other.name) &&
        listEquality.equals(drop, other.drop);
  }

  @override
  int get hashCode => const ListEquality().hash([name, drop]);
}

PresionStruct createPresionStruct() => PresionStruct();
